# Outline: Personal software and on-the-fly software

Structure, points to hit, and supporting material. No drafted prose.

Working titles:
- **Two Kinds of Software Nobody Else Will Ever Use**
- Disposable Software
- Cheaper to Build Than to Find
- Software for One, Software for Once

---

## The spine: your distinction is the post

The taxonomy you drew is the contribution. Everything else is support.

| | **On-the-fly software** | **Personal software** |
|---|---|---|
| Solves | a moment | an ongoing need |
| Lifespan | minutes to hours | months to years |
| Do you name it? | no | yes |
| Do you return to it? | no | constantly |
| Maintenance | none — it dies before it can rot | real, but now cheap |
| Needs hosting, auth, a database? | no | usually |
| Decision to build | none. you just do it | deliberate |
| Competes with | doing it by hand, or searching for a tool | paying for an app |

**Why this framing matters:** the existing writing on this is almost entirely about the right-hand column. Waxman, Sloan, Lee Robinson — all personal software. **The left-hand column is barely written about and has no accepted name.** I looked; "disposable software" and "throwaway software" aren't established terms for it. Simon Willison has built 241 of these things and calls it only *"an experiment in prompt-driven development with very low stakes."*

So the naming is available, and naming it is the most valuable thing this post can do. That's your lede, not a section.

---

## The idea underneath it

The strongest thing in your material, and worth making explicit because it explains *why* on-the-fly software is a new category rather than just small personal software:

**Building became cheaper than finding.**

- Old order: small problem → search for a tool → evaluate, sign up, learn its interface → use it. You searched because building cost more than searching.
- New order: small problem → describe the outcome → use the thing → close the tab.
- You no longer need to know a tool exists. You don't need to learn anyone's interface. The discovery step — and the learning step — disappear.

And a second framing worth trying: **software stopped being a durable good.** It used to be something you acquired, installed, learned and kept. On-the-fly software is a consumable. Paper plates, not china. That's a genuine shift in what the word "software" even points at.

---

## Narrative arc

### 1. Open — one of each, concretely

**Does:** sets up the distinction immediately through example rather than definition.

Points to hit:
- One disposable thing you built to get through a specific afternoon. Name the problem, the thing, how long it took, and the fact you never opened it again.
- One bespoke thing you still use. Name who it's for and how long you've had it.
- Then the claim: these are two different activities that get talked about as one, and the first one barely gets talked about at all.
- Your qualifier, early: you've never handwritten code.

Don't open by defining the categories. Open with the two examples and let the distinction land on its own.

### 2. On-the-fly software

**Does:** the under-written half. Give it the most room — this is where the post is original.

Points to hit:
- You have something to do. You build a micro-app, an artifact, a small site. You solve the thing. You close it.
- No name, no repo, no deployment, no maintenance, no second visit.
- Why it's not just "a small app": the decision to build never happens. There's no evaluation, no "is this worth building." You just do it, the way you'd open a notes file.
- **Cheaper to build than to find.** Spell this out — it's the mechanism.
- What disappears: discovery, sign-up, learning curve, lock-in, sunk cost, subscription.
- The weird part worth dwelling on: it's software with no future. Normally that's a failure. Here it's the design.

Substance:
- **[Simon Willison's tools collection](https://tools.simonwillison.net/)** is the best evidence anyone is doing this at scale. **241 tools** as of now, up from 78 in March 2025. Each one a **self-contained single HTML file** — inline CSS and JS, no build system, no bundler, no shared framework.
- His own framing: *"an experiment in prompt-driven development with very low stakes."*
- The detail that makes it citable rather than anecdotal: **[the colophon](https://tools.simonwillison.net/colophon)** publishes commit messages and LLM transcripts for every single tool. He shows the receipts.
- Note the tell in his own numbers: 78 → 241 in about eighteen months. The rate is the argument.

### 3. Personal software

**Does:** the better-documented half. Can be shorter because you can lean on existing work.

Points to hit:
- Bespoke, built for you, used repeatedly, never shared and never meant to be.
- Different relationship: you maintain it, you add to it, it accumulates.
- Why you'd build rather than subscribe — it fits you exactly, and nothing about it will change under you.

Substance:
- **[Robin Sloan, "An app can be a home-cooked meal", Feb 2020](https://www.robinsloan.com/notes/home-cooked-app/)** — the canonical text. BoopSnoop, a messaging app for his family.
  - *"It launched in the first week of January 2020, and almost immediately, it was downloaded by four people in three different time zones. In the years since, it has remained steady at four daily active users, with zero churn: a resounding success, exceeding every one of its creator's expectations."*
  - *"It is ruthlessly simple; we love it; no one else will ever use it."*
  - Why not WhatsApp: *"having our warm channel surrounded — encroached upon — by all that other garbage."*
  - The sovereignty line: *"There will be no sudden redesign, no flood of ads, no pivot to chase a userbase inscrutable to us."*
  - And the line that dates it: *"In a better world, I would have built this in a day, using some kind of modern, flexible HyperCard for iOS."* A week in practice, **half of it on code-signing and provisioning.**
- **Clay Shirky on situated software**, quoted by Sloan: *"Situated software, by contrast, doesn't need to be personalized — it is personal from its inception."* 2004. Sharper than "personal," and useful if you want a word for the right-hand column.
- **[Adam Waxman, "Software for One", 28 July 2026](https://www.ajwaxman.com/writing/software-for-one)** — the AI-era update, and **read it before you write.** His sleep app took a week of evenings, his fitness app a weekend, his jazz quiz a single evening. *"Imagination is now the limiting factor."* On maintenance: *"9/10 times a feedback screenshot shared with Claude gets the job done."* Cost ~$160/month, mostly a subscription he'd keep anyway.
  - ⚠️ **He has already written the default version of the right-hand column.** Which is another reason to lead with on-the-fly software and the distinction. Don't compete with him on his own ground.

### 4. Why the distinction matters

**Does:** justifies the taxonomy. Short, but it needs to be here or the post is just two lists.

Points to hit:
- They have different failure modes. Personal software rots — it needs maintaining. On-the-fly software can't rot, because it's gone.
- They have different economics. One replaces a subscription. The other replaces a search.
- They need different tools. A disposable artifact wants zero setup. A kept app wants somewhere to live, data that persists, maybe auth.
- And the practical point for a reader: **knowing which one you're making stops you over-building.** Most of the pain comes from building a disposable thing as though it has to last.

That last point is the useful takeaway. It's the thing a reader can act on tomorrow.

### 5. What you lose

**Does:** stops the post being an advert. This is the section that makes it credible, and it's where your previous post connects.

Points to hit:
- **Nothing compounds.** Build it, bin it, build it again. You don't accumulate tools and you don't get better at any one of them.
- **You never learn the good tool exists.** You build your own mediocre version instead of finding the excellent one someone spent years on. The discovery step you skipped was also doing you a favour.
- **Verification.** You use a disposable thing once and trust its output. Did it actually compute the right answer? With a spreadsheet you'd sanity-check. With a one-off app you often don't — and it looks finished either way.
- That last one is the agreement loop from your previous post, in a new place: output that's plausible, articulate, and unchecked. Worth one explicit line linking back.
- The jagged-frontier point applies too: you can't tell whether a small app got it right, because you couldn't have built it yourself.

This section is the most original *critical* thing you'd be saying. Nobody writing about this is writing about the verification risk.

### 6. The useless half

**Does:** your warmest material, and the differentiator from Waxman.

Points to hit:
- Most writing about personal software is about optimising your life — sleep, training, nutrition. Useful and a bit joyless.
- The other use is play: collages and collections, videos from family photos, games built from your kids' ridiculous ideas, something for a hobby.
- Ridiculous requests, stupid features, delights. No audience, no metrics.
- The radical version, and Sloan said it first: **four daily active users is a resounding success.**

### 7. Why play is where you learn

**Does:** the bridge to the keeping-up post. Keep it to a few lines so it doesn't take over.

Points to hit:
- On real work you use what you know works, because there's a deadline. You don't experiment with something at stake.
- A low-stakes project is the only place you'll push past where you'd normally stop, or find out what a model is bad at.
- Your PRD ritual belongs here: a standing PRD you throw at each new model. One prompt, and you *feel* the difference instead of reading someone's review.
- Protect it from justification — the bleed-over into work is a side effect, not the reason. Once play has to pay rent, it stops working.

### 8. Close

Points to land:
- Two things got cheap at once: building something to keep, and building something to throw away.
- The second is the stranger shift and the less noticed one.
- Don't tie a bow.

---

## Challenges

**1. Name the on-the-fly category.** This is the single highest-value thing in the post and it's currently unclaimed. "Disposable software," "software for once," "one-afternoon software" — whatever you land on, commit to it in the title or the first paragraph. A named idea gets cited; an observed one doesn't.

**2. What's your actual ratio?** How many disposable things have you built, and how many survived into category two? Willison published 241. A real number from you — even "about forty, three survived" — is the most persuasive sentence available, and it's the kind of specificity your last post had.

**3. Are the collages and family videos actually software?** A collage made with AI is an artifact, not an app. A game your kids play is software. Sloan's lineage is specifically software. This is a genuine fork: either narrow the post to things that are software, or name the third category deliberately. Don't let it sit unresolved — a reader will notice.

**4. Does the verification risk apply to you?** Section 5 is strongest if you can give a case where a disposable tool gave you a confidently wrong answer and you nearly used it. If that's never happened, say so, but then ask on the page how you'd know.

**5. Did you already start this on your site?** You mentioned a portfolio site you were building. If there's an earlier version of this post there, worth digging out — you may already have the examples, and reconciling the two drafts is easier than starting clean.

---

## Sources

1. **[Simon Willison's tools](https://tools.simonwillison.net/)** and **[the colophon](https://tools.simonwillison.net/colophon)** — 241 single-file tools, commit history and LLM transcripts for each, "very low stakes." The evidence base for the on-the-fly half.
2. **[Adding AI-generated descriptions to my tools collection](https://simonwillison.net/2025/Mar/13/tools-colophon/)** — the March 2025 post where the count was 78. Gives you the growth rate.
3. **[Robin Sloan, "An app can be a home-cooked meal"](https://www.robinsloan.com/notes/home-cooked-app/)** — canonical for personal software. Four users, zero churn, sovereignty, "in a better world... in a day."
4. **[Adam Waxman, "Software for One"](https://www.ajwaxman.com/writing/software-for-one)** — the recent AI-era version. Build times, costs, "imagination is now the limiting factor," "ephemeral is fine." Read first. Also cites Thariq and Lee Robinson, who built a baby tracker with his wife because they didn't need *"user profiles, badges, subscription tiers."*
5. **Clay Shirky on situated software** (2004) — worth finding the original for the quote.
6. Not yet read, worth checking: **[Ham Vocke, "Home-cooked software"](https://hamvocke.com/blog/home-cooked-software/)** — reportedly frames this as craft against the pressure to monetise, which is adjacent to your play angle.

---

## Structural notes

- **Length:** 1,100–1,400. Section 2 gets the most words; section 3 can lean on Sloan and Waxman and stay short.
- **Weighting:** roughly 40% on-the-fly, 20% personal, 40% the distinction and what it costs you. If personal software takes more than a quarter of the post you're writing Waxman's piece.
- **Biggest risk:** two lists with no argument. Sections 4 and 5 are the argument.
- **Second risk:** the cost-collapse point eating the piece. Everyone writes it. One paragraph.
- **Show the work:** a screenshot of the stupidest disposable thing you built does more than any paragraph. A table of what you built and whether it survived would do even more.
