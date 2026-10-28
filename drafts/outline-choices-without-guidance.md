# Outline: Choices without guidance

The critique piece. Different energy from the keeping-up post (`outline-keeping-up.md`) — that one ends in permission, this one ends in a demand. Keep them apart.

## The argument

You are handed **controls** and **concepts**, and never **guidance**. The systems have the information needed to advise you and don't use it. The intelligence is right there and it's pointed at the task instead of at your use of it.

## Narrative arc

### 1. The moment — the model picker and the effort slider

Points to hit:
- You open a coding agent. A list of models. A range of effort levels. No indication which fits what you're about to do.
- You can find a page listing the cost difference. It cannot tell you the cost difference **for your task**.
- So the honest default is: leave it alone. Not because default is right, but because you have no basis to move it.
- The dial is presented as control. Without guidance it's an invitation to guess.

Your raw material:
> "You can open up a page that will tell you specifically what the cost difference is, but you can't put anything with any kind of specificity about what the cost difference is going to be for your task."

### 2. The ladder illusion — new doesn't mean better

**The conceptual foundation of the post, and worth putting early.** Everything after it depends on the reader letting go of the ladder.

Points to hit:
- The assumption, and own it as one you've made: **new model = better model = better at everything.**
- It isn't true. Models differ in *kind*, not just in degree. A newer one can be worse at something the older one did well.
- **Numeric naming actively encourages the mistake.** Version numbers look like levels; effort settings look like points within a level. The whole naming convention implies a single axis you move along.
- There is **no single intelligence score.** Different models are better at exploring and researching, at synthesising large sets of data, at creating, at writing, at image and video, at long multi-step work, at speed.
- The second-order problem: even once you accept this, **how are you supposed to know which is which while you're working?** All that context lives somewhere else — other people's posts, benchmark sites, docs — and the model won't tell you when it's the wrong one for the job.

Substance:
- **METR say it outright**, in the FAQ of their time-horizons work: *"AI capabilities are uneven ('jagged') relative to humans, and we expect that time horizons on all economically valuable tasks will range over several orders of magnitude."* They found similar exponential trends in other domains but with **different absolute measurements** per domain. The research org measuring progress says capability is not one number.
- **The irony worth naming:** the industry's answer to "capability isn't one number" has been to build a better single number. Epoch's [Capabilities Index](https://epoch.ai/eci) combines 39 benchmarks into one score and is explicitly described as *similar to an IQ test*. [Artificial Analysis](https://artificialanalysis.ai/methodology/intelligence-benchmarking) weights its Intelligence Index as Agents 30%, Coding 20%, Scientific Reasoning 20%, General 30%. Both are genuinely useful for tracking progress over time. Both are **actively misleading for picking a model for a task** — which is the only question a user actually has. That distinction is a strong beat.
- **A documented, concrete example of difference-in-kind** — and it's the best one available because it comes from a team making the trade-off in production. Amp on why GPT-5 is their Oracle and Sonnet is their main agent: GPT-5 is *"surprisingly good... when planning or debugging"* but *"less proactive, less likely to jump over that last hurdle, compared to Sonnet, and these are qualities we look for in the main agent model."* Not better or worse. Differently shaped. They pair them for *"different training lineage"* and different blind spots.

### 3. So what are they actually different at?

**Read the note below before writing this section — it changes what you should put in it.**

The axes that genuinely differ between models (durable; unlike a rankings table these don't go stale):

- **Reasoning depth vs. latency** — deliberation against speed. Often directly traded off.
- **Proactivity vs. deliberation** — does it drive to completion or stop to think? Amp's Sonnet/GPT-5 split is exactly this.
- **Long-horizon coherence** — holding a multi-step task together without drifting. METR's time horizon measures this specifically.
- **Effective context use** — not the advertised window. "Context rot" means instruction-following degrades well before the stated limit, and the usable window is smaller than the number on the box.
- **Instruction-following and steerability** — how closely it stays inside what you asked for.
- **Tool use and agentic reliability** — recovering from failures, not looping, knowing when to stop.
- **Modality** — text, code, image, video, audio. Rarely the same model's strength.
- **Tokens consumed per task** — separate from price per token, and often the bigger cost driver. A cheaper model that flails is more expensive.
- **Training lineage** — different families have different blind spots. This is *why* a second opinion from another lab beats a second pass from the same one.
- **Voice** — writing style and register, which barely shows up in benchmarks and matters enormously if you write.
- **Willingness to push back** — directly relevant to *When Did You Last Disagree With AI?* (`stopped-checking.md`).

⚠️ **Honest note on the list you asked me for.** I've given you the *axes* rather than a "model X is best at Y" table, deliberately. Any such table is stale within weeks, contested while it's current, and — the real point — **the reliable, current, task-specific version of it does not exist.** That absence is your thesis. If I'd handed you a confident rankings list, I'd have been doing the thing this post criticises: producing plausible guidance with nothing solid underneath. Worth saying in the piece itself: *I went looking for the list. There isn't one.*

Where to actually look when you need current standings: [Artificial Analysis](https://artificialanalysis.ai/methodology/intelligence-benchmarking) for per-category breakdowns plus speed and price, and [Epoch's benchmarks hub](https://epoch.ai/benchmarks). Both are external to the products — which is the complaint.

### 4. Why you can't solve it yourself

Points to hit:
- The obvious answer is to test — run the task at different effort levels and compare.
- That answer is unaffordable twice over: it costs time you don't have, and it costs money, because running it three ways means paying three times.
- The user is asked to run an experiment whose whole purpose is to find out how much the experiment should have cost.
- And the result wouldn't generalise anyway — the next task is different.

> "I'm not going to run the task multiple times on different effort levels and try and see what they do differently. I don't have time for that, and also that costs more money."

### 5. The same failure in the documentation

Points to hit:
- Same shape one level up: to learn what any of these models are good at, you have to leave the product and go to another source.
- Read comparisons, hunt for examples, test things yourself, piece it together from other people's posts.
- The guidance that exists is abstract — concepts, not worked examples. And there's a real reason: these tools are so flexible that any single example looks arbitrary. **Generality is what makes them powerful and what makes them nearly impossible to teach.**
- That reason explains the gap. It doesn't excuse leaving the user to close it alone.

### 6. What good would look like

Points to hit — this is the constructive core, and specificity is what makes it land:
- The choice should be **hidden by default**, surfaced only if you go looking. Exception: people actually building on models, routing between them inside their own products. That's a different user with a real need for the dial.
- Effort should **flex to the task** rather than sit where you last left it.
- When a task suits a different model, you should be **told** — better for image generation, better for this kind of coding, better for this kind of writing.
- When something needs connecting — a service, a tool, a source — it should say so at the point it would help.
- The system should **explain itself**: not just do the work, but tell you how it approached it and what would have made it go better.

Worth distinguishing so it doesn't read as anti-control: you're not asking for the dial to be removed. You're asking for it to be **advised**. Defaults that adapt, with the override still there.

### 7. The bit that's already working — and what it reveals

**Amp's Oracle is the best existing example, and the detail is better for your argument than you'd expect.** Full context below.

Points to hit:
- Some agents now consult a second model for hard problems. It's real and it works.
- But it isn't automatic — **you** have to ask for it.
- And the vendor says plainly why: auto-consulting would cost you more money and slow you down, so they left the decision to you.
- Which is the whole problem in one design note. The judgement call is handed to the person with the least information to make it, for a reason that's entirely about cost.

### 8. The counter-argument you have to handle

**A sharp reader will raise this, so raise it first.**

- The objection: maybe the model genuinely can't tell when it's out of its depth. Self-assessment of competence is one of the things these systems are worst at. If it reliably knew a task was beyond it, it could probably just do the task better.
- That's the jagged frontier problem turned on the model itself — and the Dell'Acqua study (keeping-up post, section 7) shows *humans* can't see the frontier either.
- **Your rebuttal, and it's strong:** it doesn't need to be right. It needs to beat a user with no information at all. Right now the interface demands a judgement from the person least equipped to make it and offers nothing. The bar isn't perfect self-knowledge — it's better than an uninformed guess.
- Optional second thread, flag it as your read rather than fact: the incentives are backwards. The party that knows when to escalate isn't the party that pays for escalating — and no vendor wants to be the product that quietly ran up your bill. So the safe move is to leave the dial to you and let the under-use be invisible.

### 9. Where it shows up as tokenism

Points to hit:
- The guidance that does surface is oddly thin — "try this," "get some emails from AI," "try these image styles."
- Random, generic, disconnected from what you're actually doing.
- The gap between that and what the system could infer from the work in front of it is the tell. It isn't a capability problem.

### 10. Close

- The claim to make: with this level of intelligence in the box, the interface shouldn't be a wall of undifferentiated choice.
- The choices should be hidden, the defaults should move, and the system should explain itself.
- Keep it as a demand, not a shrug — this post's job is to be pointed.

---

## Reference: how advisor agents actually work

You asked whether the advisor is always a higher or lower model. **It's not a ladder — there are two different patterns, and the direction depends on what's scarce.**

**Pattern one — escalate sideways/up, for judgement.**
[Amp's Oracle](https://ampcode.com/news/oracle) (July 2025) is the clearest example. A **read-only subagent** that analyses rather than writes, while the main agent does the implementation.

- Originally OpenAI's **o3**, with **Sonnet 4** as the main agent.
- Since [October 2025](https://ampcode.com/news/gpt-5-oracle) the Oracle is **GPT-5**.
- Good for: reviewing, debugging, architectural decisions, subtle bugs spanning multiple files.
- Slower (a minute or more, versus seconds) and more expensive.

**The nuance that matters for your post: Amp doesn't frame it as "smarter."** In their words, GPT-5 is *"surprisingly good in certain contexts, when planning or debugging,"* but *"less proactive, less likely to jump over that last hurdle, compared to Sonnet, and these are qualities we look for in the main agent model."* They value *"its reasoning capabilities, its different training lineage, and the absence of certain idiosyncracies."*

So it's a **second opinion, not a promotion** — a different lineage with different blind spots. That's a more interesting idea than an escalation ladder, and it's closer to how you'd actually use a colleague.

**Pattern two — delegate down/out, for legwork.**
When the scarce resource is context rather than intelligence, the subagent goes the other way: searching a large codebase, reading many files, parallel grunt work. Amp's **Librarian** (searching code on GitHub) is one. Anthropic's context-engineering guidance describes the general shape — a subagent burns tens of thousands of tokens exploring and returns a **1,000–2,000 token summary**, keeping the mess out of the main agent's context.

**The rule of thumb:** escalate for judgement, delegate for legwork. Up when the bottleneck is reasoning, down or out when it's context and volume.

**And the detail that is the heart of your argument.** Amp, in their own announcement:

> "We consciously haven't pushed the oracle too hard in the system prompt, to avoid unnecessarily increasing costs for you or slowing you down. Instead, we rely on explicit prompting to get the main agent to consult the oracle."

The one product that built the advisor **deliberately chose not to let it self-invoke**, on cost grounds, and handed the decision back to the user. Their suggested prompts are things like *"Use the oracle as much as possible, since it's smart."* You still have to know it exists, know when it helps, and remember to ask.

That isn't an oversight you're complaining about. It's a documented design trade-off — which makes your point far harder to wave away.

## Sources

- [Amp: Oracle](https://ampcode.com/news/oracle) — July 2025, the o3 announcement and the cost rationale.
- [Amp: GPT-5 Oracle](https://ampcode.com/news/gpt-5-oracle) — October 2025, the model swap and the "different training lineage" framing.
- [Anthropic: Effective context engineering for AI agents](https://www.anthropic.com/engineering/effective-context-engineering-for-ai-agents) — the delegate-down subagent pattern and the token numbers.
- [Dell'Acqua et al., Navigating the Jagged Technological Frontier](https://mitsloan.mit.edu/sites/default/files/2023-10/SSRN-id4573321.pdf) — for section 6; humans can't see the frontier either, which is why the interface shouldn't assume they can.
