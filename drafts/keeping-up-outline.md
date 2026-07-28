# Outline: How the heck do you keep up?

Working title options:
- **The Half-Life of Knowing How** *(favourite — names the mechanism, not the mood)*
- What I Stopped Doing
- The Frontier Moves Without Telling You
- Everything I Built Got Eaten

---

## The spine (read this first)

Three ideas, in order of how much weight they carry:

**1. The bitter lesson, applied to you personally.** Every workaround you learn for a model's weakness has a short shelf life. Everything you learn that gives the model something it could never have — your context, your taste, your judgement about what's worth building — holds its value or gains it. That's the sorting rule the whole post is walking toward, and it turns the rant into something a reader can act on.

**2. The hard part you can't fix by trying harder.** You can't tell from inside your own workflow whether your method is stale. There's no error message for "this used to be the good way." Staleness is silent — that's what makes dedication insufficient.

**3. This is the same shape as your last post.** In *Think With Me Not For Me*, the loop didn't make the work bad — it removed the signal that would tell you when it was. Here: the change doesn't make your methods bad, it removes the signal that would tell you when they've expired. **Missing signal, not missing capability, in both.** That continuity is worth making explicit — one line pointing back is enough, and it makes the two posts read as a body of work rather than two takes.

Match the shape that worked last time: name the trap → explain the mechanism with real research → hand over two portable questions.

---

## Narrative arc

### 1. Open on the trap, not the announcement

You already learned this lesson once on the last post — the lede lands harder when it opens with the trap. The trap here:

> You put in the work. You learned the tools, built the skills, figured out the workflow. And then, without anything breaking, without a single error message, it quietly stopped being the right way to do it.

Do **not** open with "AI is moving fast." Every reader already knows. The interesting claim isn't that it's fast — it's that **being active and committed doesn't protect you**, which is genuinely counterintuitive and is the thing you actually discovered.

Your quote, cleaned for the page:

> "I had thought that once I learned it, I'd find it easier to just evolve my learning. I actually find it really difficult, because I don't know if what I'm doing is now a dated and old way of doing things."

### 2. The good year — how the pile got built

Brisk. This is setup, not the point. Two short paragraphs at most.

- Coding went from hacky prototypes to whole products, built by agents
- Every capability jump spawned a new thing to learn:
  - which product to use
  - which model
  - design tools that came alive
  - skills you build yourself
  - skills you take from other people
- The learning felt cumulative. Each thing you added made you better. That was the reasonable assumption — and it's the one about to break.

Land the beat: **you were rewarded for accumulating. So you accumulated.**

### 3. The turn — the pile is now the problem

The pivot. Give it its own short paragraph so the reader feels the floor move.

- The models got better and quietly ate the scaffolding
- Plan mode: you leaned on it, models now plan as they go
- Skills: a lot of yours were thin wrappers around things the model now does unprompted
- Agents: you learned to build them by hand, now they spin up on their own
- The honest admission, which is the most likeable line in the piece:

> "I overdid it with skills. I added too many — like when you got an iPhone at the start and downloaded every app you saw, then forgot about most of them."

- The sting isn't that the work was wasted. It's that **the pile now costs you something**: maintenance, clutter, and scaffolding that fights a model that no longer needs it.

### 4. The mechanism — why this keeps happening (research goes here)

This is where the post earns its keep. It's not vibes, it's a known dynamic with a name.

- **Sutton's bitter lesson**: general methods that scale with compute beat hand-crafted human knowledge. Seventy years of it. Reliably.
- The sharpest formulation, from Hugo Bowne-Anderson: every piece of scaffolding **encodes an assumption about what the model can't do**. When the model learns to do it, that piece becomes *load-bearing for nothing* — and should come out. Anthropic reportedly strips capability out of Claude Code's own harness as models improve.
- Your skills *were* scaffolding. Your plan-mode habit was scaffolding. This wasn't bad judgement — it was the correct move at the time, with a built-in expiry date nobody printed on the box.
- The distinction that does the real work (steal this framing, it's the best thing in the reference material):
  - work that **compensates for a model weakness** → short shelf life
  - work that **supplies something the model can't have** — your data, your context, your standards → *more* valuable as models improve
- The pace, if the numbers hold up: task lengths agents can handle have been doubling roughly every 7 months, possibly every 4 recently. **Verify before publishing** (see references).

The reframe to land: **you didn't fall behind. The ground moved, and it moves on a schedule.** Nobody is ahead of this in the way you're imagining they are.

### 5. The part that's actually hard — you can't see it from inside

Your strongest material. Give it room.

> "Even when you dedicate the time, even when you stay active, you can still go out of date. Unless you're constantly pushing on the edge, you might think you're doing the frontier thing — and you're not. There's something better."

- Staleness has no symptom. Your old workflow still works. It returns output. Nothing errors. It's just no longer the best available, and **nothing in your day tells you that.**
- Which is why "just keep learning" fails as advice: you can learn hard, constantly, in the wrong direction, and feel great about it.
- The advice you get is contradictory and unfalsifiable:

> "We're getting constant new instructions on how we should be using the new models, and how we need to work with them differently. It's so vague and nuanced, it's insane."

- New models land and you can't feel the difference. You work through it, and someone tells you to jump back to GPT anyway.
- One line back to the last post: same failure mode. The signal is what's missing, not the capability.

### 6. The calibration problem — the most original section in the post

Nobody is writing this and it's specifically yours. Don't bury it.

> "What effort level should I use? I don't know. For a really hard coding task — I don't code. I've never coded. The AI does the coding for me, so I don't know whether what I'm asking for is a hard coding task or not. It's all hard to me, and it's also all easy to me, because I don't have to do it."

- Effort dials assume you can estimate difficulty. Estimating difficulty is a skill you get from *doing the work* — the exact work you handed over.
- Generalise it and it becomes a real idea: **AI takes the work, and it also takes the calibration you would have got from doing the work.** You keep the output, you lose the yardstick.
- This is the same family as the cognitive debt point from your last post, one level up: not "can you explain the answer" but "can you judge the question."
- It also applies to everyone who arrived at building through AI rather than through code — a fast-growing group nobody is writing for. That's your reader.
- Don't resolve it here. Sit in it. The fix goes in the next section, and it's a good one: stop trying to estimate, start measuring.

### 7. And the next layer is already eating the current one

Short section, sharp point.

- Loops. You built your own agents, wired up a loop, and it's already the dated way — goal-driven loops and auto-spun agents are the new thing.

> "The way I build agents feels out of date, and now there are easier ways where they just get spun up automatically. I'm like, ah man, this is just unrelenting."

- The vocabulary treadmill is real and worth naming plainly: prompt engineering → context engineering → harness engineering → loop engineering. Each one gets announced as the thing you should have been doing all along.
- **The trap to name explicitly:** chasing each new layer is the same mistake as building the last pile, just with newer nouns. The bitter lesson will eat loops too.

### 8. What to do

Two questions, mirroring the structure that worked last time.

**Question one: does the model already do this?**

The only reliable test, and it's empirical because it has to be — nobody publishes a list of what each model now handles unprompted.

- Delete the skill. Turn off the scaffold. Run the task raw.
- Same output? It was thin. It's gone. Notice how good that feels.
- Worse output? It's earning its place. Keep it, and re-test it after the next model release.
- Run it as a ritual on a schedule, not when you feel guilty. Every model release, pick three things and re-test them.

**Question two: is this a workaround, or is it mine?**

The sorting rule from section 4, in usable form.

- Workarounds for model weakness — prompt tricks, wrappers, hand-built scaffolds — are rented. Expect to lose them, don't grieve them.
- Your context, your standards, your judgement about what's worth building and what "good" looks like — those compound. The model can't have them.
- Invest asymmetrically. Learn tools lightly. Learn taste deeply.

**On effort levels specifically — the answer is to stop estimating.**

You can't estimate difficulty and you probably never will. Fine. Measure instead:

- Run at default. If it churns, loops, or comes back thin, raise it. A cheap failure *is* the calibration — and it costs a minute.
- Proxies you can judge without coding: how many files does it touch? Is it a new thing or a copy of a pattern that already exists in the codebase? Is it reversible? Is it a decision or an execution?
- Reach for maximum effort on judgement and design, not volume. Long and boring isn't hard.

**Keeping up, on a fixed budget.**

The reason keeping up is beating you is that you're doing it by consuming, and consumption is unbounded. Reading has no natural end, so it always loses. Replace it with things that fit in a box:

- **Prune on a schedule.** If you can't remember installing it, delete it. Deletion is the underrated half of keeping up.
- **Read release notes and model cards, not takes.** Takes tell you what's new. Release notes tell you what to *stop doing* — which is the information you're actually missing.
- **Pick two or three synthesisers, drop the firehose.** People who publish periodic recaps beat people who publish constantly. Simon Willison is the standing example.
- **One deliberate experiment per model release.** One task, done the new way, even if it feels worse. That's your only real frontier signal.
- **Accept a lag.** Two weeks behind and calm beats current and frantic. The frontier is not a place you can stand.

### 9. Close

Bring it back to what doesn't expire, and — this matters — don't tie it in a bow. Your last post closed on a question and it was stronger for it.

Candidate landing:

> The tools expire. The scaffolding gets eaten. What doesn't expire is knowing what you're trying to build and being able to tell whether it's any good. That's the part worth getting better at — it's the only part that survives the next model.

Optional harder ending, if you want the honest version: you will go out of date again. The goal isn't to prevent it. It's to make it cheap.

---

## Key quotes to keep (your words, lightly cleaned)

Ranked by how much I'd fight to keep them:

1. "Unless you're constantly pushing on the edge, you might think you're doing the frontier thing — and you're not." *(the thesis in one line)*
2. "I don't code. I've never coded. The AI does the coding for me, so I don't know whether what I'm asking for is a hard coding task or not."
3. "It's all hard to me, and it's also all easy to me, because I don't have to do it."
4. "I overdid it with skills — like when you got an iPhone at the start and downloaded every app you saw, then forgot about most of them."
5. "I had thought that once I learned it, I'd find it easier to evolve. I actually find it really difficult."
6. "The way I build agents feels out of date, and now they just get spun up automatically."
7. "It's so vague and nuanced, it's insane."
8. "A lot of the skills I installed were very thin. The model does what they did now."

**On the swearing:** your last published post has none, and the restraint is part of why it reads as considered rather than reactive. My call: keep one, maybe, at the peak of the effort-level section where the frustration is the point. Cut the rest. The raw transcript energy should survive in the *rhythm*, not the profanity.

---

## Reference material

> **Fetch caveat:** this session's egress policy blocks direct page fetches (everything 403s at the proxy), so the bullets below are assembled from search results, not from reading the pages. Treat them as accurate on substance and unreliable on exact wording. Read anything you intend to quote.

**Strong — use these:**

- [Forget Agent Skills](https://hugobowne.substack.com/p/forget-agent-skills) — Hugo Bowne-Anderson. **The closest thing to your post that already exists — read this first.**
  - Agents grew by bolting on scaffolding: planning systems, retrieval, memory layers, reflection loops, tool orchestration, multi-agent workflows. Frontier models are now absorbing those capabilities directly.
  - Explicitly tells you to forget agent skills, subagents, ralph loops, and whatever else is trending — i.e. the exact anxiety in your section 7.
  - Reports that top builders are more focused on **verification, memory, review, personal software and workflow design** than on swarms or autonomous loops. That's a direct, citable answer to your "am I missing something?" question — and the answer is *not* "you should be doing loops."
- [What do you build when the models keep changing?](https://hugobowne.substack.com/p/are-better-models-making-agent-engineering) — same author, and the title is your post's question. Unread, but worth checking before you write, if only to make sure you're not restating it.
- [AI Agent Harness, 3 Principles for Context Engineering, and the Bitter Lesson Revisited](https://hugobowne.substack.com/p/ai-agent-harness-3-principles-for)
  - **The line to steal:** every component in a harness encodes an assumption about what the model *can't* do on its own. When the model gets better at that thing, the component becomes **"load-bearing for nothing"** and should come out. That's your entire thesis in one phrase, and it's a better formulation than the one in this outline.
  - Reported that Anthropic strips capability out of Claude Code's own harness as models improve. If you can verify it, it's the strongest single fact in your post: the people building the tool delete their own scaffolding on purpose.
  - Three-part context playbook — **Reduce** (shrink what's passed to the model), **Offload** (move state out of the prompt, into files and atomic tools), **Isolate** (delegate to sub-agents).
  - ⚠️ I earlier attributed a "scaffolding buys 10–20%" figure to this piece; it doesn't appear in anything I can verify. **Don't publish that number.** I've cut it from section 4.
- [Effective context engineering for AI agents](https://www.anthropic.com/engineering/effective-context-engineering-for-ai-agents) — Anthropic, primary source.
  - Core principle: find the **smallest set of high-signal tokens** that gets the outcome you want. Context is a finite resource with diminishing returns, not a bucket to fill.
  - Frames context engineering as the successor to prompt engineering — managing everything the model sees at each step, not crafting one instruction.
  - Techniques: compaction, structured note-taking, multi-agent architectures. Sub-agents burn tens of thousands of tokens exploring and hand back a 1,000–2,000 token summary, keeping the mess out of the lead agent's context.
  - **Why it matters to your argument:** "smallest set of high-signal tokens" is an argument *for pruning*. Your instinct to delete skills isn't housekeeping, it's the recommended practice.
- [Measuring AI Ability to Complete Long Software Tasks](https://metr.org/blog/2025-03-19-measuring-ai-ability-to-complete-long-tasks/) — METR, the ~7-month doubling finding. **I couldn't fetch this (403), so the doubling numbers and the claimed acceleration to ~4 months are unverified. Check the primary source before you publish a number.**
- [A new Moore's Law for AI agents](https://theaidigest.org/time-horizons) — AI Digest's tracker of the same data, usually more current. Also 403'd for me; worth a look in a browser.
- [Simon Willison's AI writing](https://simonwillison.net/tags/ai/) — the standing example of synthesis over firehose; his periodic recaps are the model for "keeping up on a fixed budget." Also [his highlights from Lenny's Podcast](https://simonw.substack.com/p/highlights-from-my-conversation-about) and [the full episode](https://www.lennysnewsletter.com/p/an-ai-state-of-the-union).
  - Dates the inflection to **November 2025** (GPT-5.1, Opus 4.5): coding agents went from "mostly work but need watching" to "do what you tell them almost all of the time." That's a citable anchor for your section 2 — better than a vague "this year."
  - Writes ~95% of his code from his phone now, and is mentally exhausted by 11am. **Use this.** It's the same complaint as yours from the other end of the expertise range: the constraint stopped being skill and became judgement and attention. A career engineer is tired for the same reason you are.
  - The "dark factory" pattern — nobody writes or reviews the code, AI does its own QA — is where your section 7 is heading, and he's sceptical rather than triumphant about it.
  - Coined "prompt injection" and "AI slop"; treats prompt injection as still-unsolved. Useful counterweight if you want one line acknowledging that not everything is getting better.
- [Andrej Karpathy](https://x.com/karpathy/status/2037921699824607591) — you already cite him; his context-engineering framing is the origin of that vocabulary shift.

**Useful for the bitter lesson section:**

- [AI Founder's Bitter Lesson](https://lukaspetersson.com/blog/2025/bitter-vertical/) — Lukas Petersson, four chapters. Written for founders, transfers cleanly to personal workflow.
  - Ch.1: systems that leverage domain knowledge get overtaken by systems that leverage compute — the historical pattern, repeatedly.
  - Ch.1's two conditions are the useful bit, because they tell you **when** scaffolding survives: where the solution path is unclear, more autonomy wins; where the input space is large and complex, *less* specific products win. Invert it and you get the case for keeping a skill — narrow, well-defined, stable input.
  - Ch.2 ("No Power"): constrained vertical products lack the strategic position to hold ground once the general option is good enough.
  - Ch.3: predicts very few verticals where specialised products still thrive by 2027.
  - "Architectural assumptions baked in today are obsolete in six months" — the quotable line.
- Sutton's original *The Bitter Lesson* essay — one page, the anchor for the whole section. Cite the source, not the summarisers.
- [The Bitter Lesson of Agentic Coding](https://agent-hypervisor.ai/posts/bitter-lesson-of-agentic-coding/) — unverified, lower priority.

**Vocabulary treadmill (section 7):**

- [Loop, Harness, Context Engineering: The Terms Explained](https://www.codecentric.de/en/knowledge-hub/blog/loop-harness-context-engineering-explained)
- [Context vs prompt vs loop vs harness engineering](https://explainx.ai/blog/context-prompt-loop-harness-engineering-stack-2026) — thin, but it's a clean illustration of the treadmill you're describing. Arguably more useful as an *exhibit* than a citation.

**Avoid:**

- The "half-life of skills" search results (skills expiring in 2 years, "7–10 hours a week of learning to stand still"). Every one traced back to LinkedIn posts, Medium reposts and recruiting-blog SEO citing each other. The stat is *exactly* what your argument wants, which is the reason to be suspicious of it. Your last post cited arXiv, Science and MIT Media Lab — that standard is part of your credibility. Either find real labour-economics research on skill depreciation, or make the point from your own experience and don't dress it in a fake number.

**Worth chasing:**

- Anthropic / OpenAI docs on reasoning-effort and thinking budgets — is there actual published guidance on when to raise effort? If it's as vague as you suspect, *that's a finding* and it belongs in the post.
- MIT Media Lab "Your Brain on ChatGPT" — you cited it last time; the calibration-loss argument in section 6 is its natural sequel. A callback rather than a new citation.

---

## Challenges (you asked for these)

**1. What is being out of date actually costing you?**
The whole post assumes stale = worse, and you never test it. If plan mode still gets you where you're going, is using it a problem or just unfashionable? Name the cost concretely or the argument is anxiety wearing an argument's clothes. My guess at the real answer, which is more interesting than "worse output": the cost isn't quality, it's the **tax of maintaining scaffolding you no longer need** — clutter, upkeep, and occasionally fighting a model that would've done better unaided. Say that and the post gets sharper.

**2. Are you optimising for output, or for being seen at the frontier?**
"Everyone says jump back to GPT" — who's everyone, and why does their opinion move you? Some of this is a status game. Honest question to answer on the page: if nobody could see your setup, would you still feel behind? Answering it honestly is the difference between a good post and a relatable one.

**3. "I don't code" — is that still true?**
You're shipping products. Code exists because you directed it. You wrote a skill, pruned it, judged it. That's not nothing, and "I've never coded" may be a self-description that expired the same way your skills did. **The most out-of-date thing in the post might be your model of yourself** — and if so, that's the best twist available to you. It also reframes section 6: you can't estimate difficulty *yet*, and the reason isn't that you're not a coder, it's that you haven't been keeping score.

**4. If skills got eaten, why wouldn't loops?**
You're worried about not having done loops. But by your own argument, loops are the next layer of scaffolding, and the bitter lesson comes for them too. So is the answer to learn loops — or to notice that chasing layers is the pattern that got you here? You can't both diagnose the treadmill and then run faster on it. Pick one, on the page.

**5. What's your actual re-tooling budget?**
If you rebuilt your entire setup every three months, would the output be better? Enough to pay for the rebuild? You've assumed staleness is more expensive than switching without checking. There's a real number here and you're closer to it than most people.

**6. Would you delete it if it cost nothing to keep?**
Half your skill clutter survives because deletion feels like admitting waste. It isn't. Those skills did their job during the window they were good in. Sunk cost is doing quiet work in your setup, and naming it gives the reader permission too.

---

## How this helps other people

You asked how to help others going through this. Options, best first:

1. **The reframe is the help.** "You didn't fall behind, the ground moved on a schedule" is genuinely relieving, and almost nobody says it. Most AI content is engineered to make readers feel behind — this is the opposite, and the contrast is your positioning.
2. **Publish the deletions.** Everyone posts what they added. Nobody posts what they removed and why. "What I stopped doing this quarter" is an underserved format, it's repeatable, and it's a natural series after this post.
3. **Write for the non-coder builder.** Section 6 is the piece nobody else can write from experience. Difficulty proxies for people who ship code without reading it is a whole post on its own — this one can trail it.
4. **Ship the pruning ritual as a checklist.** Delete → run raw → compare. Concrete, stealable, and it's the thing readers will actually do on a Sunday.
5. **Say the number out loud.** How many skills did you install, how many survived? Specificity is what makes confession useful instead of performative. If it's 40 down to 6, that's the most quotable fact in the post.

---

## Structural notes

- **Length**: ~1,200–1,500 words. *Think With Me Not For Me* is tight and that's why it works. Sections 2 and 3 want to sprawl — they're the setup, keep them lean and spend the words on 5, 6 and 8.
- **Cut candidate**: the product/model/design-tool enumeration in section 2. It dates the post badly and every reader can supply their own list. One clause, not a bullet list, unless the specificity is the point.
- **Risk to watch**: this ends up as a list of complaints with a shrug at the end. The bitter lesson section and the two questions are what prevent that. If you cut anything, don't cut those.
- **Voice**: the first-person discovery framing you landed on last time ("I went reading to understand why") works here too — you *did* go and find out that this has a name and a mechanism. Write it as discovery, not as briefing.
- **Diagram opportunity**: the pile getting eaten. Layers of scaffolding (prompt tricks → skills → agents → loops), with model capability rising through them like a waterline. Same role the loop diagram played in the last post.
