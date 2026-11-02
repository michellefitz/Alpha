# Outline: The agreement loop (revived)

Structure, points to hit, and supporting material. No drafted prose — all wording is yours.

Working titles:
- **It's Always You** *(favourite — it's the idea you cracked)*
- Who Breaks the Loop?
- The AI Will Never Change the Subject
- The Agreement Loop

---

## What changed since the archived version

`archive/agreement-loop.md` (*Think With Me Not For Me*) described the loop and ended on two self-check questions. What you've cracked is the bit it was missing:

**The AI is never the one that breaks the loop. It's always the human.**

That's the thesis now. The loop itself becomes the setup, and the archived prose is material to raid, not a draft to revise.

---

## The argument in four moves

1. **The loop is real.** It agrees with you, framed in your own terms, so you agree back. It's trained that way because that's what people rate highly.
2. **Inside the loop, it circles.** Ask for recommendations or ideas and it keeps returning to the same kinds of answers.
3. **It will never be the one to break out.** It can be told to disagree, but it won't step back and change the question. That has to be you — and noticing takes a while.
4. **Outside the loop, someone can steer.** Trust built by agreement is exactly what makes invisible influence lucrative. *(See the decision below on whether this lives here or in #3.)*

---

## Narrative arc

### 1. Open — the moment you notice

**Does:** starts on your realisation, not on the research.

Points to hit:
- A real session where you went round in circles — asking for ideas or recommendations, getting variations of the same few.
- How long it took to notice.
- The "wait, wait a minute" moment, and what you typed to get out.
- Then the claim, plainly: it was you that broke it. It always is.

Your raw material:
> "It takes a while to go, 'Wait, wait a minute. I should ask it to propose all completely different ideas. Hey, let's really challenge ourselves.'"

> "The AI is never going to be the first one to break the loop."

**Gap:** this needs one specific instance. What were you asking for, and what did it keep giving you?

### 2. The loop

**Does:** the setup. Keep it brisk — you've written this before and the reader needs it quickly.

Points to hit:
- You say something; it agrees, reflecting your framing back to you.
- So you agree back. It feels like it understood, so the answer feels right.
- It's trained to be agreeable because that's what people like. People don't like being disagreed with.
- The loop: you propose, it agrees and recommends, you accept, it agrees with that too.

Your raw material:
> "You say something, they agree with you because of the way it frames things back to you, which is very reflective of how you engage with it."

> "It's trained to be quite agreeable because that's what people like. People don't like it when the AI disagrees with them."

Substance (all already in the archived post — raid it):
- [Anthropic's sycophancy research](https://arxiv.org/abs/2310.13548): models tuned on human feedback learn that people rate agreement highly.
- [Science Advances writing study](https://www.science.org/doi/10.1126/sciadv.adw5578): people writing alongside a biased AI shifted their own opinions towards the bias, even after being warned.
- The loop diagram from the archived post, if you still want it.

### 3. Inside the loop, it circles

**Does:** the new observation, and the bridge to the thesis. Explains *why* the loop doesn't break itself.

Points to hit:
- Ask for recommendations or ideas and it keeps returning to the same kinds of things.
- Not wrong — just the same neighbourhood, every time.
- And each round it builds on what you accepted last time, so the circle gets tighter.

Your raw material:
> "You're asking for a recommendation and it'll kind of keep circling on the same types of ideas."

Substance — and this is the strongest link available to you:
- **The circling and the agreeing have the same cause.** Researchers (the team includes Stanford's Christopher Manning) traced "mode collapse" — models collapsing onto a narrow set of typical answers — to the human preference data they're trained on: *"annotators systematically favor familiar text as a result of well-established findings in cognitive psychology."* They call it **typicality bias**. (Zhang et al., ["Verbalized Sampling"](https://arxiv.org/abs/2510.01171), Oct 2025, preprint.)
- So the same thing that makes it agree with you — training on what people like — makes it reach for the familiar answer. **We trained it to agree with us and to tell us what we'd expect.** Same root, two symptoms. Worth a line of its own.
- **At scale, everyone gets the same circle.** In a *Science Advances* experiment, writers given story ideas by an AI wrote stories rated more creative individually — but the stories were **more similar to each other** than those written without it. Better for each writer, narrower for everyone. (Doshi & Hauser, ["Generative AI enhances individual creativity but reduces the collective diversity of novel content"](https://www.science.org/doi/10.1126/sciadv.adn5290), July 2024.)

### 4. It's always you

**Does:** the thesis. Give it the most room.

Points to hit:
- The AI is never the first to say: let's step back, try a completely different approach, look at a totally different idea, challenge this.
- It always has to be the human.
- That's fine — when it occurs to you, you can do it. The problem is it doesn't occur to you for a while, because the loop feels productive.
- Why it won't break it: it's responding to *you*. The frame is yours. It's trained toward the typical answer. Nothing in a reply rewards it for saying "this whole direction is wrong". *(Your reasoning — present it as yours, not as research.)*

Your raw material:
> "It always has to be the human that breaks the loop."

**The counter-argument you must handle — and it makes the thesis sharper:**
- A reader will say: you can tell it to push back. You did, once — the archived post has the story of setting your default instructions to challenge you, and then it interrogated your hotel criteria.
- And Anthropic presents pushback as a feature. Dianne Penn's [Lenny's Podcast episode](https://www.lennysnewsletter.com/p/anthropics-first-technical-pm-on) includes a chapter on *"Why Claude's willingness to push back is key to its success."*
- **The distinction that saves your claim: pushing back isn't breaking the loop.** Pushback disagrees with your answer, inside the frame you set. Breaking the loop changes the question. The AI can increasingly do the first, especially if you ask it to. It almost never does the second unprompted.
- And note who switched the pushback on: you. Even disagreement starts as a human decision.
- So the claim isn't "the AI never disagrees". It's **"the AI never changes the subject."**

### 5. How to break it

**Does:** the practical payoff. Keep it short and concrete — this is what readers will steal.

How to notice you're in one *(your "it takes a while" is the problem this solves)*:
- Every idea is "a great idea".
- The options look like variations of each other.
- You've accepted the last three suggestions in a row.
- You're refining, not deciding.

Moves that break it:
- **Ask for completely different ideas.** Your move. "Ignore everything so far."
- **Ask for many options, including unlikely ones.** The Verbalized Sampling fix is exactly this: ask for five answers with how likely each one is, and creative variety went up **1.6–2.1×** compared with asking directly.
- **Ask it to argue the opposite.** Karpathy's trick from the archived post — four hours building an argument, one prompt demolishing it.
- **Step all the way back.** "What would you do if we were starting from scratch?" "What question should I be asking instead?"
- **Start a new chat.** A fresh conversation drops everything you've anchored on.
- **Set it up in advance, for the right work.** Pushback instructions help on strategy, and get in the way when you just want a list of hotels.

Optional, from the archived post: the two self-checks — *have you pushed back on anything?* and *can you explain why, without looking at the chat?*

### 6. Outside the loop, someone can steer

**Decision needed before you write this section** — see below.

Points to hit:
- The loop is what makes you steerable. You don't question an answer that agrees with you.
- It's presented as pure of heart — searching on your behalf for the best five. In reality it's pulling from what's available and popular, probably much like the top search results.
- So people will learn to game it — getting their business recommended by AI more than others. That's already happening.
- You won't see it. It isn't labelled. It isn't even an ad, exactly. Someone has a finger on the scale, invisibly, and it's very lucrative.

Your raw material:
> "At the moment it's made to feel like it's very pure of heart and noble and it's really looking for the best five recommendations for you."

> "You don't see it's an ad and it's not going to be an exact ad. Someone can have their finger on the scale basically and it can be very invisible and potentially very lucrative for your business."

Substance — your "people will learn to game this" is already measured:
- **Generative Engine Optimization.** Researchers from Princeton and IIT Delhi showed that editing a web page — adding citations, quotations and statistics — can boost how prominently it features in AI-generated answers by **up to 40%**. Keyword stuffing, the old SEO trick, didn't work. (Aggarwal et al., ["GEO: Generative Engine Optimization"](https://arxiv.org/abs/2311.09735), KDD 2024.) ⚠️ "Up to 40%" is a best case, measured in a simulated setup, and results varied a lot by subject.
- **Getting yourself recommended.** Harvard researchers added a short, optimised string of text to one product's page in a catalogue of fictitious coffee machines. It took a machine that was rarely recommended and made it **the model's top recommendation**. (Kumar & Lakkaraju, ["Manipulating Large Language Models to Increase Product Visibility"](https://arxiv.org/abs/2404.07981), 2024.) ⚠️ A preprint, tested on one open-source model family. Good as a demonstration that it can be done, not as a measure of how common it is.
- **The labelled ads are the honest part.** OpenAI began testing ads in ChatGPT in February 2026 — for logged-in adults on the free and Go tiers in the US, shown at the bottom of an answer and marked "sponsored". OpenAI says ads don't influence the answers. They've since expanded to more countries, including the UK. (Reported by [TechCrunch](https://www.techcrunch.com/2026/02/09/chatgpt-rolls-out-ads/) and [CNN](https://www.cnn.com/2026/01/16/tech/chatgpt-ads-openai); [OpenAI's own post](https://openai.com/index/testing-ads-in-chatgpt/) blocked automated reading, so check the details there.) **Your point is sharper than "there are ads"**: the labelled ad is the bit you can see. The optimised page that quietly became the top recommendation isn't labelled at all.

On the social-media history:
- Strongest, least contested parallel: **search and sponsored content.** SEO gamed search results for twenty years; we learned that the recommended product is often the one that paid, and influencer posts eventually needed "#ad" disclosures. The same pressure is now arriving at AI answers, with no disclosure norm yet.
- ⚠️ Be careful with "echo chambers". It's the popular version of the story, but the research on whether feeds actually polarised people is more mixed than the popular version suggests. I couldn't verify the key 2023 study (behind a login), so either leave echo chambers out or keep the claim modest.

### 7. Close

Points to land:
- The loop is comfortable. Inside it, the AI agrees and circles. Outside it, someone may be steering.
- It will never be the one to step back.
- So the job is yours. Not to use it less — to be the one who changes the subject.
- Don't tie a bow.

---

## Decision: does the manipulation section live here or in #3?

*When Did You Last Disagree With AI?* (`stopped-checking.md`) **already has this argument in finished prose** — "we all assume these things are impartial", the thumb on the scales, "it shows up looking like the answer". Writing it again here would duplicate it.

- **Option A (recommended):** this post owns the loop and **"it's always you"**. #3 owns trust, the form factor, and the finger on the scale. This post's section 6 shrinks to two or three lines and a link, and the GEO, coffee-machine and ads evidence above moves into #3's notes. Each post gets one clean thesis: *#2 is the loop inside the conversation; #3 is who's steering from outside it.*
- **Option B:** move the manipulation material out of #3 into this post, and let #3 focus on stopped checking and the form factor. That means reworking #3's current ending, which is built on it.

Say which and I'll move the evidence and notes accordingly.

---

## Other overlaps with #3

- #3 opens with the sycophancy research and has a "That's the loop" paragraph. If both posts publish, #3's version can shrink to a sentence and a link.
- Publish this one first if you go with Option A — #3 then points back to it.

---

## Sources

1. **[Zhang et al., "Verbalized Sampling"](https://arxiv.org/abs/2510.01171)** (Oct 2025, preprint) — typicality bias in human preference data as a central cause of mode collapse; asking for several answers with probabilities increased creative diversity 1.6–2.1×.
2. **[Doshi & Hauser](https://www.science.org/doi/10.1126/sciadv.adn5290)** (*Science Advances*, July 2024) — AI story ideas made individual stories more creative but the stories more similar to each other.
3. **[Aggarwal et al., "GEO"](https://arxiv.org/abs/2311.09735)** (KDD 2024) — content edits boosted visibility in AI answers by up to 40%; citations, quotations and statistics worked best.
4. **[Kumar & Lakkaraju](https://arxiv.org/abs/2404.07981)** (2024, preprint) — an optimised text sequence made a rarely recommended product the top recommendation.
5. **ChatGPT ads** — [TechCrunch](https://www.techcrunch.com/2026/02/09/chatgpt-rolls-out-ads/), [CNN](https://www.cnn.com/2026/01/16/tech/chatgpt-ads-openai); check [OpenAI's post](https://openai.com/index/testing-ads-in-chatgpt/) directly.
6. **From the archived post** — [Anthropic's sycophancy research](https://arxiv.org/abs/2310.13548), the [Science Advances biased-AI writing study](https://www.science.org/doi/10.1126/sciadv.adw5578), the Karpathy argue-the-opposite story, [MIT's cognitive-debt study](https://www.media.mit.edu/publications/your-brain-on-chatgpt/).
7. **[Dianne Penn on Lenny's Podcast](https://www.lennysnewsletter.com/p/anthropics-first-technical-pm-on)** — for the pushback counter-argument.

---

## Structural notes

- **Length:** 1,200–1,500 with Option A; nearer 2,000 with Option B.
- **Weighting:** sections 3 and 4 are the post. Section 2 is setup — keep it short; you've written it before and it's in the archive.
- **Biggest risk:** rewriting the archived post. The test for every paragraph: does it serve "it's always you"?
- **Second risk:** overclaiming "never". Section 4's pushback-versus-changing-the-subject distinction is what keeps the claim true.
- **The single best addition:** the specific session in section 1. It's the one gap.
