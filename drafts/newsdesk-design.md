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

## The fourteen steps

Each step adds one capability. Each step exists because the previous version
had a specific problem. Every step is usable on its own — stop at step four and
you still have something good.

| # | Step | What you add | What it teaches |
| --- | --- | --- | --- |
| 1 | The brief | A `CLAUDE.md` with your topic, what you already know, what to skip | Persistent context |
| 2 | The command | A skill that runs the digest the same way every time | Skills |
| 3 | The archive | Editions saved to files; each run reads the last ones first | State and memory |
| 4 | The researchers | Several subagents running at once, one per source type | Subagents, context isolation |
| 5 | The viewpoints | A subagent briefed to find disagreement, not consensus | How an agent's job is defined |
| 6 | The check | A second pass that tries to knock down each claim | Verification |
| 7 | The workflow | The whole process written as a script you can rerun | Dynamic workflows |
| 8 | The branches | Stories routed by type; loops that dig; a plan for when a source fails | Conditional routing, cycles, exception paths |
| 9 | The schedule | It runs without you and leaves you a published page | Routines, desktop tasks, `/loop`, autonomy levels |
| 10 | The models | A different model and effort level per stage, and an advisor for the hard calls | Model selection, effort, cost |
| 11 | The automatic checks | Dead links, duplicates, index updates — every run, no exceptions | Hooks |
| 12 | Real sources, real delivery | Connectors that read from where your topic lives and send the edition to your inbox | MCP and tools |
| 13 | The standard | A check on whether the digest is any good | Evals |
| 14 | Hand it on (optional) | Package it so someone else can run all fourteen | Plugins and marketplaces |

Fourteen is what the list is today. As new capabilities ship they become step
fifteen and sixteen. That's the design: a spine you keep adding to.

The post probably doesn't walk all fourteen at equal depth. Steps 1–9 are the
system; 10–14 are what you do once it's running.

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
- **8.** Every story gets treated identically — a research paper and a press
  release go through the same reader — and a quiet Tuesday produces the same
  padded five items as a huge one.
- **9.** You have to be awake and at your desk for any of it to happen.
- **10.** It's running every day now. Either it's costing more than it's worth,
  or it's fast and cheap and the edition reads like it.
- **11.** Nothing is checking the mechanical things.
- **12.** Web search doesn't reach the forums, papers, and feeds where your
  topic actually lives.
- **13.** It's running unattended and you have no way to tell a good edition
  from a bad one.
- **14.** Someone asks how you did it.

## What the vocabulary actually refers to

Three terms are circulating that describe different layers of the same system.
They compose; none replaces another. Newsdesk gives each one a concrete
referent, which is most of the value of building it.

| Term | What it means | Where it is in Newsdesk |
| --- | --- | --- |
| Context engineering | Controlling what a single model sees — instructions, retrieved material, memory, window budget | Step 1 (the brief) and step 3 (the archive). Also why step 4 exists: separate researchers keep forty sources out of one window |
| Loop engineering | Making one agent's repeated iteration reliable — retries, checks, stopping conditions | Step 6 (verify, drop what fails) and step 8 (`/loop` and scheduled runs) |
| Graph engineering | The topology: which nodes exist, which transitions are allowed, where work fans out and converges | Steps 7 and 8. Step 7 builds the straight-line version; step 8 adds the branches, loops and failure paths |

Step 7 fans out to parallel researchers, joins at a verification node, passes
the survivors to synthesis, then hands off to deterministic nodes (the hooks in
step 11) and a human checkpoint (approving sources in setup). Step 8 is where it
stops being a straight line.

One caveat worth keeping: **the term is newer than the practice.** It surfaced
around July 2026, mostly through blog posts, describing something orchestration
frameworks have done for years. New vocabulary for existing work is worth
noticing as a pattern, because it will happen again with the next three terms.

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

## Step 8, in more detail

This is where the process stops being a straight line. Three things, each with a
reason the system already has.

**Routing: not every story is the same kind of thing.** A router classifies what
came in and sends it to the reader that suits it. A research paper needs someone
who'll read the method and notice the sample size. A product launch needs
someone who checks whether you can actually use it yet or whether it's a waitlist.
A funding story needs the number checked against the last round. A rumour needs
the chain traced back to whoever actually said it. You'd read these four things
differently yourself, which is the argument for the machine doing it too.

Routing only works if the researchers return structured findings rather than
paragraphs — you can't branch on prose. That's a concept worth meeting here.

**Routing: quiet days and big days.** If little happened, produce a short
edition and say it was quiet. If something large happened, drop the usual shape
and go deep on the one story. This is the direct fix for the failure mode where
a daily format demands five items whether or not five things happened, and it's
the most valuable branch in the system.

**Cycles: keep pulling the thread.** A story cites a post citing a thread citing
a paper. Loop until you reach the primary source or hit a depth limit. Same
pattern for search: run another round, and stop when a round turns up nothing
new. Both teach the thing that matters about loops, which is not how to start
one but how to stop it.

**Exception paths: things fail constantly.** A feed is down, a site is
paywalled, an API is rate-limited, verification can't reach a source to check a
claim. The wrong answer is a thinner edition that looks normal. The right answer
is an edition that says which sources it couldn't reach, and marks a claim
unverified rather than quietly dropping or asserting it.

An unattended system that fails silently is worse than one that doesn't run,
because you'll trust it. You won't notice this in a demo. You'll notice it in
week one, which is the argument for running it a week before writing anything.

## Step 10, in more detail

Most people meet a model picker and an effort setting with no idea what to do
with either. Newsdesk answers it by having an obvious gradient inside one small
system.

| Stage | Work | Choice |
| --- | --- | --- |
| Fetching and skimming forty sources | High volume, low judgement | Cheapest fast model |
| Classifying and routing | Bounded decision | Cheap model |
| Verification | Careful but narrow | Mid |
| Viewpoints and synthesis | The judgement work — the part you actually read | Strongest model, high effort |
| "Is this genuinely a big deal or is it hype?" | A hard call worth a second opinion | The advisor |

The lesson is that they work together on purpose: the great majority of the
tokens go through a cheap model, and the small fraction that involves judgement
goes through the best one. That's most of practical cost control, demonstrated
in a system small enough to hold in your head.

And you can feel it. Run synthesis on the fast model for a day and the edition
is visibly worse — thinner, more generic, more confident. That's an eval you
don't have to instrument. You just read it, the same way you know your own
topic. Doing this deliberately for one edition is a better lesson than any
explanation of effort levels.



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

## Two things folded into step 9

Not big enough for their own steps, but they're where these concepts become
real, and both are missing from most explanations.

**How much rope to give it.** Permission modes, auto mode, sandboxing. The
moment work runs unattended you have to decide what it's allowed to do without
asking. Newsdesk is read-mostly, so it's the rare place you can turn this up and
find out what happens with a blast radius of one bad summary. Most people never
get to experiment with autonomy because the first place they meet it is
somewhere that matters.

**Seeing what it did.** Run transcripts, the workflow progress view, a log of
what each run fetched and rejected. When you're in the loop you don't need this.
The day it runs without you, an unreadable system is an untrustworthy one.

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
