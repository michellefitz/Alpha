# Newsdesk — design notes

## What this is

A small system that follows a topic you care about and gives you something
worth reading. Mine is AI news.

It is also the point. Building it teaches you the agentic capabilities —
subagents, workflows, routines, loops, hooks, tools — because each one gets
added to solve a specific problem the system has. You learn what a subagent is
by needing one.

Two things get built:

1. **My own system**, for AI news. I run it for a week, then write about it.
2. **A setup tool** other people install and run. It interviews them about their
   topic, then builds the same system with them, one step at a time, explaining
   each concept as it goes.

The second one is the deliverable. It's a teaching tool that happens to leave
you with something useful.

## The twelve steps

Each step adds one capability. Each step exists because the previous version
had a specific problem. Every step is usable on its own — stop at step four and
you still have something good.

| # | Step | What you add | What it teaches |
| --- | --- | --- | --- |
| 1 | The brief | A `CLAUDE.md` with your topic, what you already know, what to skip | Persistent context |
| 2 | The command | A skill that runs the digest the same way every time | Skills |
| 3 | The archive | Editions saved to files; each run reads the last ones first | State and memory |
| 4 | The researchers | Several subagents running at once, one per source type | Subagents, context isolation, model choice |
| 5 | The viewpoints | A subagent briefed to find disagreement, not consensus | How an agent's job is defined |
| 6 | The check | A second pass that tries to knock down each claim | Verification |
| 7 | The workflow | The whole process written as a script you can rerun | Dynamic workflows |
| 8 | The schedule | It runs without you and leaves you a published page | Routines, desktop tasks, `/loop` |
| 9 | The automatic checks | Dead links, duplicates, index updates — every run, no exceptions | Hooks |
| 10 | Real sources, real delivery | Connectors that read from where your topic lives and send the edition to your inbox | MCP and tools |
| 11 | The standard | A check on whether the digest is any good | Evals |
| 12 | Hand it on (optional) | Package it so someone else can run all twelve | Plugins and marketplaces |

Twelve is what the list is today. As new capabilities ship, they become step
thirteen and fourteen. That's the design: a spine you keep adding to.

### Why each step happens

- **1.** Ask a chatbot what's new in your topic and you get a generic answer. It
  doesn't know what you already know.
- **2.** The brief works, but you retype the request every time and get a
  different shape of answer each time.
- **3.** Every edition starts from scratch, so you get the same five stories
  again on Tuesday.
- **4.** One agent reading forty sources fills up on junk and the summaries go
  vague.
- **5.** Four researchers all summarising produce four flavours of the same
  consensus.
- **6.** Some of what comes back is plausible and wrong.
- **7.** You're deciding what to run each day, and doing it slightly
  differently each time.
- **8.** You have to be awake and at your desk for any of it to happen.
- **9.** It's producing daily now and nothing is checking the mechanical things.
- **10.** Web search doesn't reach the forums, papers, and feeds where your
  topic actually lives.
- **11.** It's running unattended and you have no way to tell a good edition
  from a bad one.
- **12.** Someone asks how you did it.

## What the vocabulary actually refers to

Three terms are circulating that describe different layers of the same system.
They compose; none replaces another. Newsdesk gives each one a concrete
referent, which is most of the value of building it.

| Term | What it means | Where it is in Newsdesk |
| --- | --- | --- |
| Context engineering | Controlling what a single model sees — instructions, retrieved material, memory, window budget | Step 1 (the brief) and step 3 (the archive). Also why step 4 exists: separate researchers keep forty sources out of one window |
| Loop engineering | Making one agent's repeated iteration reliable — retries, checks, stopping conditions | Step 6 (verify, drop what fails) and step 8 (`/loop` and scheduled runs) |
| Graph engineering | The topology: which nodes exist, which transitions are allowed, where work fans out and converges | Step 7 (the workflow). It is the only step that's really about this |

So: is Newsdesk graph engineering? Step 7 is. The workflow script fans out to
parallel researchers, joins their results at a verification node, passes the
survivors to a synthesis node, then hands off to deterministic nodes (the hooks
in step 9) and a human checkpoint (approving sources in setup). Written down as
a script you can read, which is the whole idea.

Two honest caveats worth keeping:

- **Newsdesk's graph is a simple one.** Fan out, converge, synthesise. No
  conditional routing, no cycles, no exception paths. It's the shallow end of
  what the term covers, and calling it a full example would be overselling.
- **The term is newer than the practice.** It surfaced around July 2026, mostly
  through blog posts, describing something orchestration frameworks have done
  for years. New vocabulary for existing work is worth noticing as a pattern,
  because it will happen again with the next three terms.

## Step 5, in more detail

The most important step, and the one most likely to fail.

The job is not to disagree for the sake of it. It's to find where informed
people actually differ, and show you the angles without picking one. Where a
story has genuine disagreement, the edition says so and gives you the strongest
version of each side. Where there's real consensus, it says that too.

It never gives you the verdict. You reach your own conclusion — that's the
whole point of reading the thing. A digest that hands you a tidy answer has done
your thinking for you, which is the failure mode this entire system exists to
avoid.

Risk: models are good at producing a symmetrical, hollow "on the other hand"
paragraph. If that's what comes out, it's worth saying so in the post.

## Step 10, in more detail

Tools go both directions, and the inbound direction is the more interesting one.

**An inbox as a source.** Set up a dedicated email address and subscribe it to
the newsletters you already half-read and never get through. The system reads
them for you. For AI news this is close to ideal — the best coverage of the
topic arrives as newsletters, and everyone subscribed to six of them is already
behind. Gardening has the same shape, so does most of what people follow.

This also teaches the thing worth learning about tools: an agent with an inbox
is reading text written by strangers, and that text can contain instructions. A
dedicated address used only for subscriptions keeps that contained, and keeps
your real mail out of it. It's a real decision with a real reason, made
somewhere the stakes are a newsletter.

**An inbox as delivery.** The edition arrives at 7am like any other newsletter,
which is where you'd read it anyway. The published page is the archive; the
email is the habit.

**Finding the rest.** Which connectors matter is topic-dependent, so the setup
tool searches for them at the time rather than shipping a fixed list. That way
it keeps working as new servers appear.

The pattern underneath is stable, though:

- **Almost everyone wants** email, RSS feeds, Reddit, YouTube transcripts.
- **Topic-specific** varies a lot: arXiv and GitHub releases for AI, weather and
  frost dates for gardening, launch schedules for space, gig listings and label
  feeds for music.

Asking someone where they currently read about their topic gets you most of this
list without them knowing what MCP is.

## What an edition contains

- **What's new for you** — filtered against your brief, not against general
  importance.
- **Where people disagree** — the angles, no verdict.
- **What's changed since last time** — things earlier editions got wrong or
  called too early. Only possible because of the archive.
- **What was left out, and why** — so you can correct the brief.
- **One thing to read in full.**

## The setup tool

Someone installs it, runs one command, answers some questions, and comes out
the other side with a working system and an understanding of how it works.

How it behaves:

- **Interviews first.** What's your topic? What do you already know? Which
  podcasts, newsletters and sites do you already read? What do you never want to
  see again? How often do you want this?
- **Proposes sources, doesn't impose them.** It takes the handful of places you
  named, goes and finds related ones, and brings back a list for you to approve
  or reject one by one. You'll have views on which sources you trust that it
  can't guess. The rejected ones are worth keeping too — a standing "not this"
  list is part of the brief.
- **Builds one step at a time.** It doesn't generate twelve things at once. It
  builds step one, explains in a few plain sentences what a `CLAUDE.md` is and
  why this needs one, and has you run it. Then it offers step two.
- **Explains next to the thing.** The explanation lands beside the file it just
  created, while you can see what it does. Short and plain — no jargon that
  isn't the actual name of the thing.
- **Stops anywhere.** Each step is a good place to stop. You can come back
  later.
- **Resumes.** It knows which step you're on, so new steps can be added over
  time and you pick them up when you're ready.

The tool needs to know it's a teaching tool. Getting the system built is the
easy half; the reason it exists is what the person understands afterwards.

## Why a personal topic and not work

- You can tell immediately whether the output is good, because you know the
  subject. On work tasks you often can't judge the result without doing the work
  yourself.
- The stakes are low, so you'll actually turn the autonomy up and see what
  happens.
- No access requests, no approvals, no security review. Just a topic.
- You can show it to people, and they can show you theirs.

## The risk to say out loud

The default version of this is a daily email you stop opening after a week.
Summarising is the easy part. A system that automates only the easy part gives
you confident volume and no judgement.

Steps 5, 6 and 11 are the answer to that, which is why they're in the list at
all.

## Open

1. Name. It needs a plain one.
2. Does the blog post walk all twelve, or the first eight with the rest in the
   repo?
3. One post, or a post plus a video script?
