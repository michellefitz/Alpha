# Outline: How the heck do you keep up?

Working title options:
- **The Capability Overhang** *(favourite — it's your idea, it's concrete, and it isn't a complaint)*
- What I'm Not Getting Out Of It
- Nobody Shows You The Examples
- The Half-Life of Knowing How

---

## The spine

Three claims, in order of load-bearing weight.

**1. There's a capability overhang, and it costs you money.** The tools can do far more than any user extracts. That gap doesn't close by itself, and it doesn't close for engaged users either. This is the thesis, and it's the reason the post isn't whining: the cost is real and countable — wasted tokens, the wrong model on the wrong job, work that came out worse than it needed to.

**2. The overhang persists because the guidance is abstract.** Labs ship capability faster than they ship usable instruction. You get concepts — loops, evals, effort levels, context engineering — and almost never a worked example. Partly because these things are so flexible that any single example feels arbitrary. This is the most original argument you have, and nobody else is making it plainly.

**3. And there's no signal telling you you've gone stale.** Your old workflow still runs. Nothing errors. Same shape as *Think With Me Not For Me*: the loop didn't make the work bad, it removed the signal that would tell you when it was. Worth one line pointing back — it makes the two posts a body of work.

Keep the shape that worked last time: name the trap → explain the mechanism → hand over something portable.

---

## Narrative arc

### 1. Open on the cost, not the pace

Don't open with "AI is moving fast." Everyone knows. Open with the gap:

> The tools got good faster than anyone learned to use them. There's a permanent gap now between what these things can do and what I actually get out of them — and I can't tell how big mine is.

Your framing, which is the thesis:

> "There's a capability overhang that even the most engaged users struggle to keep up with and make the most of, unless you're constantly on it."

Then the disclaimer that earns the reader's trust immediately, because it removes the status motive:

> "It's nothing about being unfashionable. It's that you might not be making the most of it. You might not be as cost-effective as you could be."

### 2. The good year — how the pile got built

Two paragraphs, brisk. This is setup.

- Coding went from hacky prototypes to whole products, built by agents.
- Each jump spawned another thing to learn: products, models, design tools, skills you build, skills you borrow.
- The learning felt cumulative. Every addition made you better. **That assumption is the one about to break.**

Optional anchor: Simon Willison dates the shift to around November 2025 — coding agents went from "mostly work but need watching" to doing what you tell them almost every time.

### 3. The turn — the pile is now the problem

Give it its own short section so the floor moves.

- Plan mode: you leaned on it; models plan as they go now.
- Skills: many of yours were thin wrappers around things the model does unprompted.
- Agents: you learned to hand-build them; they spin up on their own now.
- The likeable admission:

> "I overdid it with skills — like when you got an iPhone at the start and downloaded every app you saw, then forgot about most of them."

- Land it: the pile isn't just wasted effort, it's **live cost**. Maintenance, clutter, and scaffolding that gets in the way of a model that no longer needs it.

### 4. Why this keeps happening

Short, and it does real work: this is a known dynamic, not your bad luck.

- Sutton's bitter lesson: general methods that scale with compute beat hand-crafted human knowledge. Seventy years of it.
- Lance Martin (LangChain) states it for exactly your situation: *"Over time models get better and you're having to strip away structure, remove assumptions and make your harness or your system simpler and adapt to the models."*
- Two facts that reframe your frustration as normal professional practice:
  - Manus has been re-architected **five times since March 2024**.
  - Anthropic strips capability out of Claude Code's own harness as models improve.
- The reframe: **you didn't fall behind. Everyone rebuilds, on a schedule, forever.** Nobody is ahead of this the way you imagine.

### 5. Nobody shows you the examples

**The section only you are writing. Give it room.**

> "So much of their output just talks about the abstract concepts without giving you practical examples. It's hard to get practical examples because they could be used so flexibly."

- The advice arrives as vocabulary: loops, evals, goals, effort, context engineering. Rarely as "here is the actual thing, on a real task, start to finish."
- And there's a real reason, which is what makes this an argument rather than a gripe: the tools are so flexible that any single example looks arbitrary. Generality is what makes them powerful *and* what makes them hard to teach.
- So the burden lands on you. You have to derive the practice from the concept, every time, for every new concept — and you can't tell whether you derived it right.
- **This is the actual mechanism behind the overhang.** Not the pace. The pace would be survivable if the instructions were concrete.
- Then the twist that makes it land: the canonical source on how fast AI moves — METR's task-horizon paper — **went out of date and its authors had to staple a warning to the front of it.** Even the people measuring the change can't keep their own writing current.

### 6. The calibration problem

Your most original personal material. Precise version, not the loose one:

> "I've never handwritten code. I don't know when a coding task is complex or not. Some things that look simple can actually be complex coding, and vice versa."

- Effort dials, model choice and cost control all assume you can estimate difficulty. Estimating difficulty comes from doing the work — which is the part you handed over.
- Generalise it: **AI takes the work, and it takes the calibration you'd have got from doing the work.** You keep the output, you lose the yardstick.
- Note the asymmetry runs both ways — simple-looking things that are hard, hard-looking things that are trivial. It isn't that everything seems hard; it's that appearance and difficulty are **decoupled**.
- Same family as the cognitive debt point from your last post, one level up: not "can you explain the answer" but "can you judge the question."
- This is now the largest group of people building software and nobody writes for them. That's your reader.
- Don't resolve it here. The fix is in section 8, and it's real.

### 7. The loop question, answered honestly

You've done more of the thinking here than you're giving yourself credit for. Say it precisely:

> "I figured out you can do loops for routine or regular workflows. For building a feature, I don't even know how to do a goal loop for that. I haven't even spent the time on it."

- That's not a knowledge gap, it's a **map**: loops work where the task repeats and success is checkable. Feature-building is neither.
- Supporting evidence, and it should genuinely settle your nerves: Hugo Bowne-Anderson and Thomas Wiecki spent ~10 hours interviewing 16 builders they trust about what they actually use. The answers kept being **verification, memory, review, personal software, workflow design** — *"much less swarms, autonomous loops, or agent frameworks."*
- Martin's criterion for when full autonomy actually works: **high supervision, rapid feedback loops, low risk.** Feature-building on a codebase you can't read fails all three.
- So the honest conclusion: **you're not behind on loops. The discourse is ahead of the practice.** People are writing about loops far more than they're successfully using them for open-ended work.
- Name the treadmill plainly — prompt engineering → context engineering → harness → loops — and then name the trap: chasing each new layer is the same mistake as building the last pile, with newer nouns.

### 8. What to do

**Test one: does your setup get better when the model does?**

The one real staleness signal, and it answers section 3's "there's no error message."

- Run the same task through your setup on a weaker model, then a stronger one.
- Better output with the better model → your setup is riding the wave. Leave it alone.
- Barely moves → **your scaffolding is the ceiling, not the model.**
- (Martin's future-proofing test, adapted. It's the most useful thing in any of the sources.)

**Test two: does the model already do this?**

Empirical because it has to be — nobody publishes what each model now handles unprompted.

- Delete the skill, run the task raw, compare.
- Same output → it was thin, it's gone.
- Worse → it earns its place. Re-test after the next release.
- Ritual, not guilt. Every model release, pick three and re-test.

**Test three: is it rented or is it yours?**

- Workarounds for model weakness — prompt tricks, wrappers, hand-built scaffolds — are rented. Expect to lose them.
- Your context, your standards, your judgement about what's worth building: those compound. The model can't have them.
- Learn tools lightly. Learn taste deeply.

**On effort and difficulty — stop estimating, start measuring.**

You can't estimate difficulty and probably never will. Fine:

- Run at default. If it churns or comes back thin, raise it. A cheap failure *is* the calibration, and it costs a minute.
- Proxies you can judge without reading code: how many files does it touch? New thing, or a copy of a pattern already in the codebase? Reversible? A decision, or an execution?
- Max effort for judgement and design, not volume. Long and boring isn't hard.

**On the overhang specifically — measure it once.**

The strongest possible move before publishing, because it converts your thesis from a worry into a finding:

- Look at your actual spend. Where did the tokens go? Which jobs ran on an expensive model that a cheap one would have handled?
- Write down your current routing policy, even if it's "I use one model for everything." That's the confession that makes the post useful.
- One number — "I was running X on max effort for a month" — beats a thousand words of "you might be leaving value on the table."

**Keeping up, on a fixed budget.**

Consumption is unbounded, so it always loses. Replace it with things that fit in a box:

- **Prune on a schedule.** Can't remember installing it? Delete it.
- **Release notes over takes.** Takes tell you what's new; release notes tell you what to *stop doing*.
- **Two or three synthesisers, not the firehose.** Periodic recaps beat constant posting.
- **One deliberate experiment per model release.** One task, the new way, even if it feels worse.
- **Accept a lag.** Two weeks behind and calm beats current and frantic.

### 9. Close

Don't tie a bow — your last post closed on a question and was stronger for it.

> The tools expire, the scaffolding gets eaten, and the guidance shows up as vocabulary. What doesn't expire is knowing what you're trying to build and whether it's any good.

Or the harder version: you'll go out of date again. The goal isn't preventing it, it's making it cheap.

---

## Key quotes to keep

Ranked.

1. "There's a capability overhang that even the most engaged users struggle to keep up with and make the most of."
2. "It's nothing about being unfashionable. It's that you might not be making the most of it, and you might not be as cost-effective as you could be."
3. "So much of their output just talks about the abstract concepts without giving you practical examples."
4. "I've never handwritten code. I don't know when a coding task is complex or not — some things that look simple are actually complex, and vice versa."
5. "I figured out you can do loops for routine workflows. For building a feature, I don't even know how to do a goal loop. I haven't even spent the time on it."
6. "I overdid it with skills — like when you got an iPhone at the start and downloaded every app you saw."
7. "Unless you're constantly pushing on the edge, you might think you're doing the frontier thing — and you're not."
8. "I thought once I learned it I'd find it easier to evolve. I actually find it really difficult."

**On swearing:** your last post has none, and the restraint is why it reads as considered. Keep at most one, at the peak of section 6. The transcript energy should survive in the rhythm, not the profanity.

---

## Open questions for you

Four, and I've cut the one that was waffle.

**1. Can you actually measure the overhang?** Your cost is token inefficiency and bad model routing — both measurable. Go and look before you write. "I checked my spend and found X" is a completely different post from "I might not be making the most of it." This is the highest-value hour you could spend on this piece.

**2. What is your model-routing policy right now?** You name blending models as the thing you're not doing well. Do you have any rule at all? Writing down the real one — including "I don't have one" — is the specific, useful confession that makes readers trust the rest.

**3. If the labs won't publish examples, will you?** You've identified the gap. The obvious response is to fill it: one worked example, one real task, start to finish, including what didn't work. That's a harder post to write than this one and a more valuable one. Is this post the trailer for that?

**4. Are you actually behind on loops, or is the discourse ahead of the practice?** Sixteen trusted builders were asked what they use and mostly didn't say loops. If the people you'd be measuring yourself against aren't doing it either, your guilt is misplaced — and saying so publicly is more useful than another post telling people to build loops.

---

## Sources that survived

You said the rest gave you nothing. Agreed — cutting them. Five things earn their place:

1. **METR's expired paper.** [The March 2025 post](https://metr.org/blog/2025-03-19-measuring-ai-ability-to-complete-long-tasks/) carries METR's own banner: *"Some of the text and figures in this post are out of date… some claims in the text (e.g. the doubling time) reflect the state of the data at the time of original publication."* Use it as the anecdote in section 5, not for its numbers. If you want a current figure, read it off [metr.org/time-horizons](https://metr.org/time-horizons) (updated 8 May 2026) yourself. **Don't publish "doubling every 4 months"** — unverified. And note METR are explicit that the time horizon measures *task difficulty*, not how long an agent runs unattended; the misreading is everywhere and naming it would be a good credibility beat.
2. **Manus re-architected five times since March 2024**, and Anthropic strips out Claude Code's own harness as models improve. Both from [the Bowne-Anderson / Gilchrist write-up](https://hugobowne.substack.com/p/ai-agent-harness-3-principles-for) of a High Signal episode with Lance Martin.
3. **Martin's quote** for section 4, from the same piece: *"Over time models get better and you're having to strip away structure, remove assumptions and make your harness or your system simpler and adapt to the models."*
4. **Martin's future-proofing test** for section 8: *"Test your system against models of varying capabilities. If performance scales up with more powerful models, your harness is likely well-designed and not a bottleneck."*
5. **The 16-builder finding** for section 7: *"The builders we trust keep coming back to verification, memory, review, personal software, and workflow design. Much less swarms, autonomous loops, or agent frameworks."*

Sutton's original *Bitter Lesson* essay is one page and worth citing directly if you keep section 4.

**Still avoid:** the "half-life of skills" statistics. Every result traced to LinkedIn posts and recruiting-blog SEO citing each other. The stat is exactly what your argument wants, which is the reason to distrust it. Your last post cited arXiv, Science and MIT — that standard is part of your credibility.

---

## Structural notes

- **Length:** 1,200–1,500 words. *Think With Me Not For Me* is tight and that's why it works. Sections 2 and 3 want to sprawl; spend the words on 5, 6 and 7.
- **Biggest risk:** this reads as a list of complaints with a shrug at the end. Sections 4 and 8 are what prevent it. If you cut anything, don't cut those.
- **Cut candidate:** the enumeration of products/models/design tools in section 2. It dates the post badly and every reader supplies their own list.
- **Voice:** first-person discovery, like last time. You went looking and found that this has a name, a mechanism, and a professional norm attached to it.
- **Diagram:** capability rising as a waterline through layers of scaffolding — prompt tricks, skills, agents, loops — submerging each in turn. Same role the loop diagram played last time.
