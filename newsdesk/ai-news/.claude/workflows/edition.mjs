export const meta = {
  name: 'edition',
  description:
    'Produce an edition of the news digest: gather, classify, route by story type, verify, map disagreements, and write.',
}

// The graph:
//
//   4 researchers (parallel)
//        |
//   classifier  -- judges each finding AND the day as a whole
//        |
//   route by type ---> rumour:   trace the citation chain (cycle, depth-limited)
//        |             research: check the method
//        |             release:  check availability
//        |             other:    standard verification
//        |
//   verify (drop refuted, keep unverified marked)
//        |
//   viewpoints (notable + major only)
//        |
//   editor -- shape depends on quiet / normal / big
//
// Agent role instructions live in .claude/agents/. Each task below points its
// agent at the relevant file so the definitions stay in one place.

const ROLES = [
  ['research-papers', 'new research relevant to the beat'],
  ['research-releases', 'what actually shipped'],
  ['research-practice', 'first-hand practitioner accounts'],
  ['research-industry', 'industry and policy moves that clear the bar'],
]

const findingSchema = {
  type: 'object',
  required: ['findings', 'unreachable'],
  properties: {
    findings: { type: 'array', items: { type: 'object' } },
    // Exception path: every researcher reports what it could not reach, so a
    // thin edition is never mistaken for a quiet day.
    unreachable: {
      type: 'array',
      items: {
        type: 'object',
        required: ['source', 'reason'],
        properties: { source: { type: 'string' }, reason: { type: 'string' } },
      },
    },
  },
}

// ---------------------------------------------------------------- gather

const gathered = await pipeline(ROLES, ([role, brief]) =>
  agent(
    `Follow the instructions in .claude/agents/${role}.md exactly.
     Read CLAUDE.md for the beat and exclusions, sources.md for approved and
     rejected sources, and the two most recent files in archive/.
     Find ${brief}.
     Return findings as structured data, plus a list of any source you could not
     reach and why. Returning zero findings is a valid result — do that rather
     than padding.`,
    { label: role, schema: findingSchema },
  ),
)

const live = gathered.filter(Boolean)
const findings = live.flatMap(r => r.findings ?? [])
const unreachable = live.flatMap(r => r.unreachable ?? [])

// Exception path: a researcher that died entirely is different from one that
// found nothing. The edition needs to know which.
const deadRoles = ROLES.filter((_, i) => !gathered[i]).map(([role]) => role)

if (findings.length === 0) {
  return {
    day: 'quiet',
    wrote: null,
    note: 'No findings survived gathering. No edition written.',
    unreachable,
    deadRoles,
  }
}

// ------------------------------------------------------------- classify

const sorted = await agent(
  `Follow the instructions in .claude/agents/classifier.md exactly.
   Read CLAUDE.md and the two most recent files in archive/.
   Sort these findings by type and significance, merge duplicates, drop anything
   already reported without change, and judge the day.
   Findings: ${JSON.stringify(findings)}`,
  {
    label: 'classify',
    schema: {
      type: 'object',
      required: ['findings', 'day'],
      properties: {
        findings: { type: 'array', items: { type: 'object' } },
        day: { type: 'string', enum: ['quiet', 'normal', 'big'] },
        lead: { type: ['string', 'null'] },
      },
    },
  },
)

const live_findings = (sorted?.findings ?? []).filter(f => !f.already_reported)
const day = sorted?.day ?? 'normal'

// ------------------------------------------------- route, then verify
//
// Not every story is checked the same way. The router decides which check a
// finding gets; the rumour path is a depth-limited cycle rather than one pass.

const CHECKS = {
  rumour: `This is an unconfirmed report. Trace it back to its origin: open the
     source, find who it cites, open that, and repeat until you reach a primary
     source or a dead end. Stop after 4 hops. Report the actual origin, how many
     hops away it was, and whether any primary source confirms it. Three outlets
     citing one post is one source — say so.`,
  research: `This is a research finding. Open the paper itself, not coverage of
     it. Check the claim against what the paper measured: sample, task,
     population, effect size. Report where the claim overstates the paper.`,
  release: `This is a release. Establish availability before anything else:
     generally available, preview, waitlist, or announced only. Find the
     changelog or docs, not the marketing page. Report what someone can
     actually do today.`,
  industry: `This is an industry or policy item. Find the primary document —
     filing, legislation, licence, official announcement. State the concrete
     consequence: who must do what, from when. If you cannot, it fails.`,
  practice: `This is a first-hand account. Check the account is real and the
     person did what they say. Establish whether it is one account or a pattern,
     and count the independent sources.`,
}

const checked = await pipeline(live_findings, finding =>
  agent(
    `Follow the instructions in .claude/agents/verifier.md exactly.
     ${CHECKS[finding.type] ?? CHECKS.practice}
     Return one verdict: confirmed, refuted, or unverified. Unverified means you
     could not check — never resolve it by judging whether it sounds plausible.
     Finding: ${JSON.stringify(finding)}`,
    {
      label: `verify:${finding.id ?? finding.type}`,
      schema: {
        type: 'object',
        required: ['id', 'verdict'],
        properties: {
          id: { type: 'string' },
          verdict: { type: 'string', enum: ['confirmed', 'refuted', 'unverified'] },
          checked_against: { type: 'string' },
          corrected_claim: { type: 'string' },
          reason: { type: 'string' },
        },
      },
    },
  ),
)

const verdicts = new Map(checked.filter(Boolean).map(v => [v.id, v]))

// An agent that died is not a refutation. Treat it as unverified.
const survived = live_findings
  .map(f => ({ ...f, check: verdicts.get(f.id) ?? { verdict: 'unverified', reason: 'check did not complete' } }))
  .filter(f => f.check.verdict !== 'refuted')

const refutedCount = live_findings.length - survived.length

// ----------------------------------------------------------- viewpoints
//
// Only worth running on things that matter. Minor findings skip this.

const worthArguing = survived.filter(f => f.significance === 'major' || f.significance === 'notable')

const views = await pipeline(worthArguing, finding =>
  agent(
    `Follow the instructions in .claude/agents/viewpoints.md exactly.
     Find where informed people genuinely disagree about this. Steelman each
     position and link to someone holding it.
     Do not reach a verdict. If there is no real disagreement, say there is
     consensus — never invent one.
     Finding: ${JSON.stringify(finding)}`,
    {
      label: `views:${finding.id ?? 'finding'}`,
      schema: {
        type: 'object',
        required: ['status'],
        properties: {
          finding_id: { type: 'string' },
          status: {
            type: 'string',
            enum: ['genuine disagreement', 'contested facts', 'consensus', 'too new'],
          },
          positions: { type: 'array', items: { type: 'object' } },
          evidence_balance: { type: 'string' },
        },
      },
    },
  ),
)

// --------------------------------------------------------------- write

const SHAPE = {
  quiet: `The day was quiet. Write a short edition of three or four items with no
     lead, opening with a line that says plainly it was quiet. Do not pad and do
     not promote a minor finding to fill the format.`,
  normal: `A normal day. Use the standard sections.`,
  big: `A big day. Lead with the most significant story and give it real room —
     what happened, what it changes, where people disagree, what is still
     unknown. Everything else becomes a short list underneath.`,
}

const written = await agent(
  `Follow the instructions in .claude/agents/editor.md exactly.
   Read CLAUDE.md and the two most recent files in archive/.
   ${SHAPE[day]}

   Write the edition to archive/ dated today. Do not touch archive/index.md —
   it is rebuilt mechanically after you write (see scripts/update-index.sh).

   Rules that override everything: never include a refuted finding; mark
   unverified findings as unverified; never end a disagreement with a sentence
   that tells the reader what to conclude; every claim carries its link.

   ${unreachable.length || deadRoles.length ? `Include a "Sources I couldn't reach" section. Unreachable: ${JSON.stringify(unreachable)}. Stages that failed entirely: ${JSON.stringify(deadRoles)}.` : ''}

   Findings: ${JSON.stringify(survived)}
   Viewpoints: ${JSON.stringify(views.filter(Boolean))}`,
  {
    label: 'edition',
    schema: {
      type: 'object',
      required: ['path', 'summary'],
      properties: {
        path: { type: 'string' },
        summary: { type: 'string' },
        dropped: { type: 'array', items: { type: 'string' } },
        new_sources: { type: 'array', items: { type: 'string' } },
      },
    },
  },
)

return {
  day,
  wrote: written?.path ?? null,
  gathered: findings.length,
  survived: survived.length,
  refuted: refutedCount,
  unverified: survived.filter(f => f.check.verdict === 'unverified').length,
  unreachable,
  deadRoles,
  newSources: written?.new_sources ?? [],
  summary: written?.summary,
}
