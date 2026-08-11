# The Beat — design notes

Working title for the system and the post. Not final.

## The problem the post solves

New agentic terms arrive faster than anyone can absorb them: subagents, dynamic
workflows, routines, hooks, channels, auto mode, effort levels. Two things are
true at once. The only way to understand them is to use them. And almost every
explanation of them is abstract, or bolted to a codebase-specific example that
doesn't transfer.

So: one small, personal, genuinely useful system that puts most of these
capabilities to work at the same time, where each one has an obvious job. Then
hand people the means to rebuild it around a topic they actually care about.

## The frame: build yourself a newsroom

The use case is keeping up with a topic. Mine is AI news. The reader's could be
gardening, space, football transfers, synth gear, whatever they want.

The metaphor doing the work is a newsroom. You assign yourself a beat and staff
a desk to cover it. This matters more than it sounds: every abstract capability
maps onto a job a real newsroom already has, so the reader learns the primitive
and the reason for it in the same breath.

- A subagent is a stringer you send out.
- A workflow is the production process, written down.
- A hook is the copy desk rule that runs whether or not anyone remembers it.
- A routine is the desk diary.
- An eval is the standard you hold the edition to.

Nobody needs the metaphor explained. That's the point.

## Why a news beat is the right teaching vehicle

Four properties, and they're the reason this beats a to-do app or a generic
"research agent" demo.

**It's stateful.** Tuesday's edition has to know what Monday's said, or you get
the same five stories forever. That forces you into memory, an archive, and
deduplication — the actually hard part of agentic systems — on day two, in a
context where getting it wrong costs nothing.

**It's read-mostly.** Nothing here deletes your files or ships to production, so
it's the safest possible place to turn autonomy up and find out what happens.
Auto mode, unattended cloud runs, high effort: try them where the blast radius
is a bad summary.

**The feedback loop is real and immediate.** You know your own topic. A thin,
obvious, or wrong digest is instantly recognisable to you in a way that a
mediocre code review isn't. That's what teaches evaluation — you can't fake not
noticing.

**It's genuinely useful.** People maintain systems they want the output of.

## Capability map

Each capability gets one job. If it doesn't have a job, it doesn't go in.

| Newsroom role | Capability | Job |
| --- | --- | --- |
| The beat brief | `CLAUDE.md` + auto memory | What I cover, what I already know, what I never want to see again |
| Stringers | Custom subagents (`.claude/agents/`) | One per source type. Isolated context, cheap model, narrow tools |
| The morning conference | Dynamic workflow | Fan out stringers, cross-check, hand one editor the survivors |
| Fact-checker | Adversarial verification stage | Claims that don't survive cross-checking get dropped, not softened |
| The desk diary | Routines (cloud) | 7am edition, laptop shut, minimum interval one hour |
| The live desk | `/loop` | Something happening right now — a keynote, a launch day |
| The local desk | Desktop scheduled task | When the job needs local files or local tools |
| Copy desk | Hooks | Dedupe against archive, check links, update the index — deterministic, not vibes |
| The wire | Channels | Push breaking news into an already-open session from Telegram |
| Sources | MCP connectors | RSS, arXiv, Reddit, YouTube, Slack, Notion |
| The archive | Plain files in the repo | What makes this a system and not a chat |
| The front page | Artifacts | Publish the edition as a real page you can send someone |
| Standards | Evals + a review skill | How you know the edition is any good |
| The franchise | Plugin + marketplace | How a reader duplicates the whole thing in one command |

Fourteen jobs, fourteen capabilities, no filler.

### Deliberately left out

Worth naming in the post, because a feature tour that includes everything
teaches nothing about judgement.

- **Agent teams / cross-session messaging** — real capability, wrong scale. A
  handful of long-running peers is more machinery than a daily digest needs.
- **Worktrees, checkpointing, ultrareview, security review** — code-specific.
  Nothing here to branch or roll back.
- **GitHub Actions** — routines already cover the scheduling, without the YAML.

## The part that makes it not just a feature tour

A daily digest assembled by an agreeable machine is the agreement loop with a
cron job attached. It will find you the news you already expect, phrase it
confidently, and you'll nod along every morning for a year.

So the system needs a role no real newsroom would call optional: someone whose
job is to bring back the strongest case against the week's consensus. A
contrarian stringer. Every edition carries one item the rest of the desk
disagrees with.

That's the eval, too. The question to ask of the system isn't "is the summary
accurate" — it's **has this told me anything I didn't want to hear this week?**
If it hasn't, the desk is broken, however polished the output looks.

This is the direct sequel to the agreement-loop post: that one said decide what
good looks like before you read it. This one builds the machine that does it.

## The duplication path

The ask is that people can rebuild this trivially for their own topic. The
answer is a plugin, distributed through a marketplace.

```
/plugin marketplace add <handle>/the-beat
/plugin install beat@the-beat
/beat-setup
```

`/beat-setup` interviews the reader about their topic — what they care about,
what they already know, which sources they trust, how often they want an
edition — and generates the beat brief, the stringers, the source list, and the
schedule. They answer a few questions and have a working desk.

The plugin ships: the setup command, the stringer subagent definitions, the
production workflow, the copy-desk hooks, and the review skill. Everything in
the capability map above except their own topic.

## Why personal, not work

This deserves to be an argument in the post, not an aside. Learning agentic
systems on work tasks is actively worse, for four reasons that all invert when
the topic is yours:

- **You can't judge the output.** On work you often don't know if the result is
  good without doing the work yourself. On your own topic you know immediately.
- **The stakes make you cautious** exactly where you need to experiment. Nobody
  turns autonomy up on the production repo. Everyone will turn it up on a
  gardening digest.
- **Access blocks you.** Work systems need permissions, approvals, a security
  review. Your topic needs a web search.
- **You can't show anyone.** Which means you can't learn from anyone else's
  version, and they can't learn from yours.

Pick something you'd read about anyway. The system has to survive contact with
your own boredom, and only a real interest does that.

## The ladder

The teaching spine, and the shape of the video. Nobody should build fourteen
things at once. Each rung exists because the rung below it broke, and every rung
is independently useful — a reader who stops at three has something good.

0. **Just ask.** "What's new in AI this week?" You get a confident, generic,
   half-stale answer.
   *Breaks because:* it doesn't know what you know or what you care about.
1. **Write the beat brief.** `CLAUDE.md`: your topic, your level, your standing
   exclusions.
   *Breaks because:* you have to remember to ask, and tomorrow it's forgotten
   everything it told you today.
2. **Give it an archive.** Editions accumulate as files. Now it can dedupe.
   *Breaks because:* one agent reading forty sources fills its context with
   junk and the summaries go vague.
3. **Hire stringers.** Subagents — parallel, isolated context, cheap model,
   narrow tools. Sharp bullets instead of mush.
   *Breaks because:* you're deciding what to spawn every day, differently each
   time.
4. **Write the production process down.** A dynamic workflow. The orchestration
   becomes a script you can read and rerun.
   *Breaks because:* everything found gets reported, including the plausible
   and wrong.
5. **Hire the fact-checker.** Adversarial verification stage. Claims that don't
   survive cross-checking get dropped, not hedged.
   *Breaks because:* you still have to be awake to run it.
6. **Put it on the diary.** A routine. Cloud, 7am, laptop shut.
   *Breaks because:* it's producing daily now and nothing checks the mechanical
   stuff — dead links, dupes, a stale index.
7. **Open the copy desk.** Hooks. Deterministic checks that run whether or not
   anyone remembers them.
   *Breaks because:* your sources are limited to whatever web search reaches.
8. **Open the wires.** MCP connectors for real sources; channels to push
   breaking news into a session that's already open.
9. **Publish.** Artifacts. It becomes something you send people.
10. **Set the standard.** The eval, and the contrarian stringer.
11. **Franchise it.** Plugin and marketplace, so someone else can run step 0
    through 11 in an afternoon.

Rungs 8 and 9 are optional in the write-up. Channels is a research preview and
needs Bun plus a Telegram bot — a lot of setup to ask of a reader chasing a
gardening digest. Present them as the ceiling, not the floor.

## What's actually in an edition

The output is the product, and "here are eight things that happened" is slop
with a schedule. Five moves, and one of them is the whole argument:

- **What changed for you.** Filtered against your brief, not against generic
  importance.
- **What you'd have got wrong.** Things that contradict what earlier editions
  told you. *Last Tuesday this looked settled; it isn't.* This move is only
  available to a system with an archive — you cannot prompt your way to it —
  which makes it the single best demonstration of why any of this machinery is
  worth building.
- **The dissent.** The contrarian stringer's item.
- **What I didn't tell you, and why.** Filtering made visible. Builds trust and
  lets you correct the brief.
- **One thing to do.** Read this, try this.

## The risk to name out loud

The default outcome of this build is a daily email you stop opening after nine
days. Summarising is the easy part; judgement is the hard part, and a system
that automates only the easy part produces confident volume.

The post is more honest, and more useful, if it says so early and then treats
everything from rung 5 onward as the answer.

## Post structure

1. The terms are arriving faster than anyone can absorb them, and the only
   advice on offer is "just use them" — useless without something to use them
   on.
2. So pick something you care about, not something you're paid for. The four
   reasons.
3. Staff a desk. The newsroom frame.
4. The ladder, as narrative: each rung a failure of the last.
5. What broke, what I cut, what didn't earn a place.
6. The standard: has it told me anything I didn't want to hear this week?
7. Now yours. The plugin, and pick your topic.

## Open questions

1. How much do I build before writing? My instinct is build the whole thing for
   AI news first, run it for a week, then write from what actually happened —
   including what broke.
2. Is the post one piece or two? There's a version that splits into "here's the
   newsroom I built" and "here's how to build yours."
3. Does the ladder run to 11 in the post, or does the post stop at 7 and the
   repo carry the rest?
