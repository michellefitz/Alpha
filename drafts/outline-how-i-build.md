# Post 2 — How I build: outline

Working titles: *You Gaming?* · *My Little Team* · *A Venn Diagram of One*

**The one-line argument:** building things for myself, constantly, is the only
way I've found to actually learn these tools — and the skill that's come out of
it isn't building, it's knowing when the AI is wrong.

This one is entirely unwritten. Everything below is your raw material, ordered.

---

## Narrative arc

Five beats:

1. **The habit, seen from outside** — "you gaming?" → warm, funny, disarming
2. **What I've actually built** — the absurd range, the Venn diagram of one
3. **How it happens** — voice mode, gaps between school runs, the team status update
4. **What it's really for** — learning the tools, and learning the scaffolding
   nobody warns you about
5. **The muscle I didn't expect** — pushing back, and only catching it in the code

The turn to aim for: this looks like a post about *making things*. It ends up
being a post about **judgement** — which is the same place your agreement-loop
post landed, arrived at from a completely different direction.

---

## 1. The habit from outside

- Husband: *"What are you doing? You gaming?"*
- *"Yeah — building stuff with Claude."*
- Every week: look at this new thing, check this one out, I built this app
- Somewhere near here, the underlying shift: the default question became
  **could I build software to solve this?**
- The categories it produces: things purely for fun, personal tools nobody else
  will see, and things you think could be real products

## 2. What I've built

- Flight tracking
- Logging wine I'm drinking
- A blended task and meeting app
- A game
- Planning permissions
- **The observation to land:** totally different products, totally different
  users, they don't even look alike
- **I'm the only person in the middle of that Venn diagram** — because every one
  of them starts from something I personally wanted
- Worth saying plainly: I've just been really loving it

## 3. How it actually happens

- Almost all of it in **voice mode**
- I can articulate far more nuance out loud than I'd bother typing — and I can
  do it on the go
- Start of the school year: chaotic days, kids coming and going, no blocks of
  focused time. Updates slotted into the gaps
- **The status update moment:**
  - asked what had changed over the last few days, got a summary back
  - read exactly like a team's Friday update — new features, research,
    enhancements, tech debt, bugs
  - pre-AI I'd have been genuinely impressed. I'd have praised the velocity, told
    them it was a great week
  - **it was me. Talking. In between making breakfast**

## 4. What it's really for

**The tools:**

- Best way I've found to learn them properly — real fluency, not documentation
- Getting a feel for which models suit which work

**But be honest about the limits:**

- Still can't tell you which model for which task, at which effort level
- **Throwing darts in the dark**
- A lot of what I build isn't complex, but I can't write the code, so I can't
  judge how complex it is — so I can't judge what it needs
- I probably over-index high. Bigger model, more effort, on the theory that more
  is safer. I don't know if that's right

**Cross-checking — the fun part:**

- Get one model to research something, hand the answer to another, see what
  comes back
- Claude said flatly that some open datasets didn't exist → GPT found them →
  brought them back → *"oops, my bad, you're right"*
- Stopped using Claude for image generation entirely
- Poking at on-device transcription vs sending it to a service — mostly to
  understand the trade-off

**The engineering I never had:**

- Building iOS apps in Xcode, and learning to use Xcode properly (at my level)
- Deploying to TestFlight
- Setting up developer accounts
- Hosting services and domains
- Deployment, and the different kinds of environments
- Hooking different services together
- Did more of this as a junior PM on the platform side, then stopped. Coming back
  to it now
- **The point worth making loudly:** there is still *so much scaffolding*. You
  can talk to Claude and it builds the thing — but hosting it, wiring up API
  keys, accounts, environments. That's genuinely intimidating if you're not
  technical, and nobody talks about it. It has not gone away

**The pace:**

- Half of what I use now didn't meaningfully exist six months ago
- You get your head round the current set, you feel like you've got it, it moves,
  you're doing it again. Exhausting
- **Why you can't shortcut it:** not like a normal product. Normally you read the
  feature list, skim reviews, know in twenty minutes. Not here
- You have to get in and use it, for a while, on your actual work
- Differences are subtle, and whether they matter depends entirely on what you do
- Worst part: it might not be a better version of what you already do — it might
  unlock a way of working you hadn't considered, and **you have to notice that
  yourself or you won't notice it at all**

## 5. The muscle — this is the real ending

- **My little team:** skills I now run for UX reviews, security reviews, content
  audits. Fast, repeatable
- I know which parts I can do myself. I use the others at the right stage, do
  passes, make the updates
- Getting better at **interpreting their feedback** — that's its own skill
- **And getting better at pushing back**
- Easy trap: assuming its answers, its recommendations, what it builds are right.
  They're not. Often good, often close, **not 100%**
- Getting better at spotting it — including scanning the code, looking at how
  something was built, and disagreeing with it
- The examples are the good bit, because they're not code problems, they're
  **product decisions**:
  - how it decided to summarise something
  - what data it chose to display, and what it chose not to
- These are simple things — but they're **exactly the logic I used to define with
  a team**. The AI has quietly been making those calls
- **The landing:** I only catch that by looking at the code, or looking at the
  prompts. Never from the summary it hands me

---

## Why this ending works

The post opens as a story about building lots of silly things and ends on the
thing that's actually transferable: the AI is making product decisions inside
work you didn't inspect, and the only way you find out is by going and looking.

That's the same conclusion as your agreement-loop post, reached from the opposite
end — that one argued it from psychology and research, this one earns it from a
wine-logging app. You can nod to that post here, or leave the rhyme unspoken.

---

## Gaps to fill when you write it

- **Your last sentence was cut off mid-thought** — *"I only get that, actually,
  by looking at the code or looking at the prompts"* — I've read it as: you only
  catch these decisions by going into the code or prompts yourself, never from
  the summary. Confirm that's the thought, because it's carrying the ending
- Two transcription reads I made throughout: *"growth mode"* → **voice mode**,
  and *"sufficiency"* → **efficiency**
- The one thing genuinely missing: a **concrete example of a bad call you
  caught**. You describe the category (summarising, what data to show) but not a
  specific one. One real instance would be the strongest paragraph in the post
- Decide whether the husband framing opens the post or just seasons it. It's
  charming and it's a hook, but the post is more serious than "you gaming?"
  suggests — that gap can work for you if it's deliberate
