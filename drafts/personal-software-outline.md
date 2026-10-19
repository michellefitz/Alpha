# Outline: Personal software

Structure, points to hit, and supporting material. No drafted prose.

> **You said "project or blog post."** I've built this as a post outline, since that's what the rest of this session has been. If you meant a *project* — an actual thing to build — say so and I'll rework it; the obvious candidate is at the bottom under "If you meant the project."

---

## Read this first: someone just published the obvious version

**[Adam Waxman, "Software for One", 28 July 2026](https://www.ajwaxman.com/writing/software-for-one)** is very close to the default version of this post. He builds personal apps with AI, lists them, gives his stack and his monthly cost, and draws conclusions. It's good and it's recent.

So the post can't be "I build personal software with AI now, here's my list." That's taken, and taken well.

**Your two real differentiators:**

1. **You've never handwritten code.** Waxman's stack is Next.js, Drizzle ORM, Better Auth — he's an engineer who got faster. You're someone who couldn't build software at all and now ships it. That's a completely different story and almost nobody credible is telling it.
2. **Yours is play, his is optimisation.** His apps are a sleep tracker, a marathon plan, a nutrition calculator — personal *productivity*. Yours are collages, videos for your family, games built from your kids' ridiculous ideas, stupid features, delights. **That's a different thesis: personal software as play, not as self-improvement.**

Lead with those two and the post is yours. Lead with "the cost of building collapsed" and it's a worse version of his.

---

## The thesis to pick

Three options. My recommendation is C.

- **A. Personal software as play** — the antidote to optimising yourself. Strong, but half the story.
- **B. Personal software for people who don't code** — strong, underserved, but risks becoming a how-to.
- **C. Both: "I've never written code, and I build useless software for fun."** The combination is the post nobody else can write. The uselessness is the point and the non-coding is the proof of how far the floor has dropped.

---

## Narrative arc

### 1. Open — the most absurd thing you've built

**Does:** earns attention through specificity, and sets the register as fun rather than instructive.

Points to hit:
- Open on one real, concrete, slightly ridiculous thing. A game from your kids' idea, a collage generator, whatever the silliest one is.
- Who it's for: you, and maybe three other people.
- How long it took.
- The admission that reframes everything: you've never handwritten a line of code.

Don't open with "AI has made building software easier." That's the sentence every version of this post opens with.

### 2. The lineage — this isn't new, the cost is

**Does:** gives the idea intellectual weight and stops it reading as an AI-era novelty.

Points to hit:
- The idea has a name and a history. Software made for a handful of people, never meant to scale.
- The canonical text is six years old; what changed is the price, not the concept.

Substance:
- **[Robin Sloan, "An app can be a home-cooked meal", February 2020](https://www.robinsloan.com/notes/home-cooked-app/)** — the essay to cite, and it's beautiful. He built **BoopSnoop**, a messaging app for his family, after the app they used shut down.
  - *"It launched in the first week of January 2020, and almost immediately, it was downloaded by four people in three different time zones. In the years since, it has remained steady at four daily active users, with zero churn: a resounding success, exceeding every one of its creator's expectations."*
  - *"I made a messaging app for, and with, my family. It is ruthlessly simple; we love it; no one else will ever use it."*
  - Why he didn't just use WhatsApp: the prospect of *"having our warm channel surrounded — encroached upon — by all that other garbage."*
  - On sovereignty: *"There will be no sudden redesign, no flood of ads, no pivot to chase a userbase inscrutable to us."*
  - The line that dates it, and sets up your section 3: *"In a better world, I would have built this in a day, using some kind of modern, flexible HyperCard for iOS."* He built it in a week; **half the time went on code-signing and provisioning.**
  - He distributes it via TestFlight and leaves it there — *"a cozy, eternal beta."*
- **The deeper ancestor:** Sloan quotes Clay Shirky on **situated software** — *"Situated software, by contrast, doesn't need to be personalized — it is personal from its inception."* Worth using; it's a sharper formulation than "personal software" and it's from 2004.

### 3. What actually changed

**Does:** the hinge. Keep it short — it's the part everyone else writes.

Points to hit:
- Sloan's "in a better world, in a day" is now just... the case.
- The barrier was never the idea. It was the week of fighting toolchains for something only four people would use. That maths never worked.
- Now it does, and the constraint moved somewhere else entirely.

Substance:
- **Waxman's numbers** are the cleanest illustration: sleep app = a week of evenings, fitness app = a weekend, jazz quiz = **a single evening after the kids went to bed.**
- His line, and it's the one to quote: **"Imagination is now the limiting factor."**
- On cost: ~$160/month for him, mostly a Claude subscription he'd keep anyway; he reckons one or two apps runs ~$20/month plus a few dollars of API.
- On maintenance — the thing people assume kills personal software: *"9/10 times a feedback screenshot shared with Claude gets the job done."* Set against Sloan's running gag in his yearly updates — *"I have added one (1) feature, at my mother's request"* — because each change meant another fight with Xcode.
- Also his: **"ephemeral is fine."** He used the sleep app four months, then retired it when his son started sleeping through. Cheap to build means fine to throw away.

### 4. The case for useless software

**Does:** your differentiator. This is the section that makes it your post. Give it the most room.

Points to hit:
- Almost all the writing about personal software is about **optimising your life** — sleep, training, nutrition, medical records. Useful, and a bit joyless.
- You're arguing for the opposite: build things with no utility at all.
- The list, kept concrete: image collages and collections, videos from family photos for people in your family to enjoy, games with your kids built from their mad ideas, something for a hobby you actually have.
- Ridiculous requests, stupid features, delights. No audience, no stakes, no metrics.
- The thing being defended: software that nobody would ever fund, that solves no problem, that exists because it was fun to make.
- Worth landing: **four daily active users is a resounding success.** Sloan said it first and it's still the most radical sentence in this whole area.

### 5. Why play is where you actually learn

**Does:** the argument that lifts it above "do fun stuff." Also the bridge to the keeping-up post.

Points to hit:
- On real work you use what you already know works, because there's a deadline. You don't experiment when something's at stake.
- So a low-stakes project is the **only** place you'll actually try the new thing, push past where you'd normally stop, or find out what a model is bad at.
- Which means play isn't the reward for keeping up — it's the mechanism.
- Your own calibration problem connects here: you can't tell what's hard because you've never done the work. Play is where you'd find out, cheaply, with nothing riding on it.
- Protect it from justification: the moment play has to pay rent in work terms, it stops being play. The bleed-over into work is a **side effect**, not the reason. You said this yourself — keep it that way on the page.

Substance:
- Bowne-Anderson and Wiecki's ~10 hours interviewing **16 builders they trust** about what they actually use: the recurring answers were *"verification, memory, review, personal software, and workflow design"* — **"much less swarms, autonomous loops, or agent frameworks."* Personal software sits in the list of what serious builders actually do. That's useful cover for a post arguing you should go and make something silly.

### 6. The PRD ritual

**Does:** your best concrete artifact. Short section, high value.

Points to hit:
- You keep a standing PRD. When a new model lands you throw it at the new one and see what comes back.
- One prompt. No setup. A personal benchmark.
- What it gives you that reading reviews doesn't: you **feel** the difference on work you understand, instead of taking someone's word for it.
- It's also the cheapest possible answer to "how do I keep up" — which is why it belongs in both posts.

### 7. Sovereignty and impermanence

**Does:** the quieter, more serious note. Keeps the post from being all whimsy.

Points to hit:
- Nobody can redesign it, monetise it, fill it with ads, or shut it down. Sloan's point, and it's aged extremely well.
- Your family's favourite feature stays as long as they want it.
- And the inverse: it's fine for these things to die. Cheap to build means no sunk cost. Use it for four months and bin it.
- The thing worth noticing: software stopped having to be permanent to be worth making.

### 8. How to start

**Does:** gives the reader the next action. Keep it short — this is a nudge, not a tutorial.

Points to hit:
- Pick something from your actual life: a hobby, a sport, a collection, your kids.
- Don't solve a problem. Make a thing you'd enjoy.
- Nobody else has to like it. Don't show it to anyone if you don't want to.
- Expect it to be bad and build it anyway.
- Note the cheap routes for non-coders — Claude Artifacts and similar get you a working thing without touching a terminal. Waxman names those explicitly as the less technical path.

### 9. Close

Points to land:
- The economics of software changed: things that could never justify being built now can be.
- What that unlocks isn't mainly productivity. It's the return of making things for the people near you.
- Four users, zero churn. Don't tie a bow.

---

## Challenges

**1. What's yours that Waxman's isn't?** Answer it on the page in the first few paragraphs, or the post reads derivative however good it is. The answer is the non-coder angle and play-over-optimisation — but you have to say it, not imply it.

**2. Is what you make actually *software*?** A collage or a video made from family photos isn't an app — it's an artifact made with AI. A game your kids play is software. That's a real fork and it changes the post: "personal software" and "making things with AI for fun" are different arguments with different lineages. Sloan is about software. Pick one, or name the distinction deliberately.

**3. Do any of yours survive?** Sloan's app ran for years. Waxman retired his after four months and argues that's fine. Which are yours — tools you keep, or toys you abandon? Both are defensible, and the honest answer is more interesting than the flattering one. If nothing you build survives a fortnight, that's worth saying and examining rather than hiding.

**4. How much does it actually cost you?** Waxman published his number. One of the strongest things you could do is publish yours — especially as a non-coder, because the assumed barrier is money as well as skill.

**5. Will you show the work?** This post is much better with screenshots or clips of the actual things. The silliest one does more persuading than any paragraph.

---

## Sources

1. **[Robin Sloan, "An app can be a home-cooked meal"](https://www.robinsloan.com/notes/home-cooked-app/)** (Feb 2020) — the canonical essay. Four users, zero churn; the sovereignty argument; "in a better world, I would have built this in a day."
2. **[Adam Waxman, "Software for One"](https://www.ajwaxman.com/writing/software-for-one)** (28 July 2026) — the AI-era update. Build times, costs, stack, "imagination is now the limiting factor," "ephemeral is fine." **Read it before you write.** Also cites Thariq on X — *"personal software was a bit early in 2020 but in 2026, it really can be as personal as a home cooked meal, or a handwritten letter"* — and Lee Robinson, who built a baby tracker with his wife because they didn't need *"user profiles, badges, subscription tiers, or any other extra features."*
3. **Clay Shirky on situated software** (2004) — *"Situated software, by contrast, doesn't need to be personalized — it is personal from its inception."* Quoted in Sloan; worth finding the original.
4. **[Hugo Bowne-Anderson, "Forget Agent Skills"](https://hugobowne.substack.com/p/forget-agent-skills)** — the 16-builder finding that puts personal software in the list of what serious practitioners actually focus on.
5. Worth a look, not yet read: **[Ham Vocke, "Home-cooked software"](https://hamvocke.com/blog/home-cooked-software/)** frames it as building for love of the craft against the pressure to monetise — closest existing piece to your play angle, so check whether it already makes your argument.

---

## Structural notes

- **Length:** 1,000–1,300. Shorter than the keeping-up post. This one is a nudge, and nudges should be brisk.
- **Register:** this is your warmest material. Let it be light. The two serious sections (5 and 7) are what stop it being fluff — don't add a third.
- **Biggest risk:** becoming a listicle of things you built, or a tutorial. Sections 4 and 5 are the argument; the list is evidence.
- **Second risk:** the cost-collapse section eating the post. Everyone writes that. Keep section 3 short.
- **Show, don't list:** one screenshot or clip of the stupidest thing you've made is worth three paragraphs.

---

## If you meant the project

The obvious candidate, and it's a good one: **build the PRD experiment into a public artifact.** Publish the standing PRD, run it through four or five current models, and show what each produced — side by side, with your notes on where they differed.

Why it's the right project:
- It's the worked example you've been complaining nobody publishes. You'd be filling the gap you identified rather than just naming it.
- It doubles as evidence for the "models differ in kind, not degree" argument in the guidance post.
- It's repeatable — rerun it on each release and it becomes a series.
- It's the most linkable thing in all three posts.

Say the word and I'll outline that instead.
