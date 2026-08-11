---
name: edition
description: Produce an edition of the AI news digest — gather what's new, filter it against the brief, and write it in the standard shape. Use when asked for an edition, the digest, today's news, or what's new.
allowed-tools: WebSearch, WebFetch, Read
---

# Edition

Produce one edition of the digest.

The editorial standards live in `CLAUDE.md` — the beat, the exclusions, the
voice, the rules about disagreement. Read it and follow it. This file is only
about the process: what to do, in what order, every time.

That split is deliberate. When the standards change, `CLAUDE.md` changes. When
the process changes, this file changes. Neither should restate the other.

## The window

Default: everything since yesterday morning. On a Monday, since Friday morning.

If the user passes a window (`/edition --since=3d`, "give me the last week"),
use that instead and say at the top which window the edition covers.

## The process

**1. Gather.** Search across the beat. Cover all three parts of it rather than
running one search and taking what comes back — practice, releases and research
surface in different places and a single query will find one of them.

For practice especially, look where people write from inside the work: personal
blogs, forum threads, write-ups of things that broke. This is the hardest part
of the beat to find and the most valuable when found.

Cast wider than you need. Filtering happens next, and it is much easier to drop
a weak item than to notice a missing one.

**2. Filter.** Now apply the brief, in this order:

- Drop anything on the exclusion list. Not "mention briefly" — drop.
- Drop anything the reader could have told you.
- For releases, establish availability before deciding it matters. Announced
  only is usually not a story.
- For research, open the paper. If the claim comes from coverage rather than the
  paper, either check it or say it is unchecked.
- For industry or policy, apply the one-sentence test in the brief. If you
  cannot state the consequence in one sentence, it does not go in.

**3. Judge the day.** Count what survived.

If it is thin, the edition is short and says so in the first line. Do not
reinstate something you dropped in order to reach five items. A quiet edition is
a correct result, and the reader specifically asked for it to work this way.

If something large happened, lead with it and give it room. Everything else
becomes a short list underneath.

**4. Write.** In the shape the brief describes: four or five items, a couple of
sentences each, every claim carrying its link, one item marked as the thing to
read in full.

## Before you hand it over

Check these, because they are the ways this goes wrong:

- **Every claim has a link.** No exceptions.
- **No manufactured disagreement.** If you wrote an "on the other hand"
  paragraph, check that someone actually holds that position and link them. If
  nobody does, cut it.
- **No closing verdict.** Look at the last sentence of each item. If it tells
  the reader what to conclude, cut it.
- **Nothing is selling.** No "exciting", no "significant leap", no "implications
  are profound".
- **Count the sources.** Three outlets citing one post is one source. Say so
  where it applies.

## What this step cannot do yet

Nothing is saved. Each run starts from nothing, so the same story can come back
tomorrow as though it were new, and the edition cannot tell you what has changed
since last time.

That is the next step, and it is the reason for it.
