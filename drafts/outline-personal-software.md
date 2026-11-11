# Outline: Software to think with

Structure, points to hit, and supporting material. No drafted prose — all wording is yours.

Working titles:
- **Could I Build Something for This?** *(favourite — it's your mantra, and it's the takeaway)*
- Software to Think With
- Cheaper to Build Than to Find
- Software for Once
- Your Own Worst Customer

---

## The spine

**Your mantra is the post.** When you hit a question or an obstacle: *could building software help me here?* The old reflex was to draw it out or make a spreadsheet. The new one is to build something, in minutes, for exactly this problem.

Everything else is evidence for why that reflex now makes sense, and what it gets you:

1. **What changed:** building got cheaper than finding. A small prompt with very little direction gets you something good.
2. **What you actually build:** not tools that *do* things — instruments that let you *see* things. To decide, or to learn.
3. **How long it lives:** mostly once — and that's the part that works. One-use can be the highest-value software you'll make. **The software you build to keep runs into the oldest problem in product: retention.** You're your own customer, and the rules still apply.
4. **Who it's for:** usually you, sometimes the person across the table, sometimes someone else's team.
5. **What it costs you:** less checking than you'd think, *because* it's a thinking aid rather than the decision itself — and more taste than people admit.

**The turn that makes this post yours:** most writing about personal software is enthusiastic about the kind you keep. You're enthusiastic about the disposable kind and sceptical about the kept kind, from experience. That's where you part company with Waxman.

---

## Your examples, sorted by what they're for

**To decide:**

| Thing | What it let you see | Model | Lifespan |
|---|---|---|---|
| Skyscanner Chrome extension — flights as a Gantt chart | stopover lengths, total duration, landing in local vs your body's time | — | used once |
| Window and porch positioning tool, with a 3D toggle | whether you'd notice the asymmetry | Claude | one evening, with your husband |
| 3D walkthrough of the extension, then movable furniture, then Blender renders | how big the rooms really are | Claude | a few sessions |
| Mood boards per room from the floor plans | what it could look like | ChatGPT | a few sessions |
| You in ten different jackets with your dress, then real ones for sale in the styles you liked | which jacket | ChatGPT | one shopping trip |

**To learn:**

| Thing | What it let someone see | Lifespan |
|---|---|---|
| Space games for your son — the planets; why the Earth turns and it gets dark | how the solar system works | returned to a couple of times |
| Crisis simulation demo for your friend's journalism conference | how a crisis unfolds and how you'd steer it | handed to her team to develop |

**The pattern:** every single one is about understanding. None of them performs a task. That's the observation that separates this from every other personal-software post — they're all about software that *does* things for you.

---

## Narrative arc

### 1. Open — the mantra, through one example

**Does:** puts the reflex in front of the reader before naming it.

Points to hit:
- The flights. Two stopovers, one in Europe, one in Asia, fifty results, time zones, kids.
- The question that couldn't be answered from a list: will we land at 9am, which is actually 3am for them?
- The old move would have been a spreadsheet or a sketch.
- What you did instead, and how long it took.
- Then the mantra, stated plainly.

Your raw material:
> "When I run into any kind of question or obstacle, I'm like, 'Can I build software to solve this problem? Could building software help me here?' because I can build it so fast, in minutes."

> "I used to always find another way to solve it."

### 2. What changed

**Does:** the hinge. **Keep it short** — this is the part everyone else writes.

Points to hit:
- You give it a small starting point and very little direction, and it builds something good.
- So for a small problem, **building became cheaper than finding.** Old order: search, evaluate, sign up, learn the interface. New order: describe what you want to see, use it, close the tab.
- And you've never handwritten code. Say this here.

Substance:
- **[Simon Willison's tools](https://tools.simonwillison.net/)** — **241** small tools as of now, up from 78 in March 2025. Each is a single self-contained HTML file. **[The colophon](https://tools.simonwillison.net/colophon)** publishes the prompts and transcripts, and as you noticed, they're strikingly basic. That's the evidence for "very little direction" — from someone who shows his working.
- **[Robin Sloan, 2020](https://www.robinsloan.com/notes/home-cooked-app/)**, building a family app: *"In a better world, I would have built this in a day, using some kind of modern, flexible HyperCard for iOS."* It took him a week, half of it on code-signing. You're living in his better world, and in minutes rather than a day.

### 3. Software to see with

**Does:** your most original idea. Give it the most room.

Points to hit:
- Your builds don't do things; they let you see things.
- Two purposes: **to decide** (flights, windows, walkthrough, mood boards, jackets) and **to learn** (space games, crisis sim).
- What the decision ones share: too many interacting variables to hold in your head. Time zones × legs × stopovers × children's sleep. Asymmetry across a whole facade. Volume from flat drawings.
- The fix for that kind of problem has always been an external representation — a chart, a model, a sketch. The new part is that you can build the **specific** representation for the **specific** problem, instead of forcing your problem into a generic tool.
- The husband moment belongs here: the window tool existed so two people could *see the same thing* and decide together. Click, click, click, then "show me this in 3D."

Substance — and this is the reference that gives the section real weight:
- **[Bret Victor, "Explorable Explanations", March 2011](https://worrydream.com/ExplorableExplanations/)**. Victor is the canonical thinker on interactive representations as thinking tools, and his categories map onto your builds almost exactly:
  - *"A reactive document allows the reader to play with the author's assumptions and analyses, and see the consequences."* → your window tool.
  - *"An explorable example makes the abstract concrete, and allows the reader to develop an intuition for how a system works."* → your son's space games, and the crisis sim.
  - He describes his prototype as *"like a spreadsheet without the spreadsheet"* — which is almost word for word what replaced your old spreadsheet reflex.
  - The diagnosis that sets up your whole post: *"We form questions, but can't answer them. We consider alternatives, but can't explore them. We question assumptions, but can't verify them."*
  - And his aim: *"I want text to be used as an environment to think in."*
- **The point to land:** Victor hand-crafted these as research projects, one at a time, over years. You now make one for a single question on a Tuesday evening. Same arc as Sloan — the idea is old, the cost collapsed.

### 4. Most of it lives once — and that's fine

**Does:** your original disposable/kept distinction, now in service of the argument.

Points to hit:
- Two lifespans: **on-the-fly** (built for a moment, never opened again) and **personal** (bespoke, kept, used repeatedly, never shared).
- Nearly everything you've described is the first kind.
- The obvious objection — you only used the flight tool once, was it worth it? — and your answer: it informed one expensive, hard-to-reverse family decision. **The value was concentrated, not absent.**
- Conventional software assumes value = users × usage. Software for once breaks that maths. One use, if the decision is big, can be worth more than a year of a subscription.
- Name the on-the-fly category. It doesn't have an accepted name yet; Willison calls his only *"an experiment in prompt-driven development with very low stakes."*

Substance:
- **[Adam Waxman, "Software for One", 28 July 2026](https://www.ajwaxman.com/writing/software-for-one)** — the recent version of the personal-software half, and he argues *"ephemeral is fine"*: he retired his sleep app after four months. **Read it before you write** — he's written the enthusiastic version of the kept-software column. Section 5 is where you disagree with him.

### 5. Your own worst customer

**Does:** the turn. The disposable kind works; the kind you build to keep runs into the oldest problem in product. This is the most original section in the post — give it room.

Points to hit:
- You built products you thought you'd love. *This is so cool.* And you're not always using them.
- It's the same trap any product person falls into. The customer tells you the solution they want, you build exactly that, it doesn't stick, and you can't work out why — *but I gave them exactly what they asked for.*
- The old rule: **customers are experts in their problems, not their solutions.** When you build for yourself, you're the customer. The rule still applies.
- The PM's arrogance: of course that doesn't apply to me, I'm a product person. It totally does.
- Be honest about why some were overcooked: you were looking for cool ways to apply the technology, rather than solving something that nagged at you.
- The contrast with the decision tools: built for a point problem, used, done. Nothing to retain, because nothing needed to come back. *Once it's done, it's done.*
- Why the kept kind struggles: what makes people come back to consumer software is really hard, almost magic — other people, new content, network effects, surprise.
- Your own software has none of that. You designed it, so it can't surprise you. No new release, no *"check out what's new."* Nobody else in it.
- It's double-edged. Sloan loved that nobody would ever redesign his app or fill it with ads — that's the same fact as nothing new ever arriving.
- Who'll keep using software they built: the same people who always hacked things to fit their lives. Most people want the off-the-shelf thing and have no interest in customising it. AI didn't change that.
- Land it: all the problems of building for other people — getting them to come back — turn out to apply when the only user is you.

Your raw quotes:
- "The problems of retention are the exact same. They haven't changed."
- "But I gave them exactly what they said they wanted. Why aren't they using it?"
- "Customers are experts in their problems, not in their solutions."
- "As a PM, you can have an arrogance that, of course, as a product person, that doesn't apply to me, but it totally does."
- "I think some of them were overcooked."
- "Once it's done, it's done."
- "What makes people come back to a product, particularly consumer software, is really fucking hard. There's a magic in it." *(your call on the swear — see the note in the keeping-up outline)*
- "You're not going to get new surprise releases or discover things, because you designed the whole thing."
- "Nope, it's your product."
- "Turns out it happens even with your own software."

Substance:
- **The IKEA effect explains "I thought I'd love it".** In experiments where people assembled IKEA boxes, folded origami and built Lego, they valued what they'd made themselves more highly than the same things made by someone else. The effect held only when they finished — failed or destroyed builds lost it — and it appeared even in people who said they had no interest in DIY. Building it is part of why you rate it. (Norton, Mochon & Ariely, ["The IKEA effect: When labor leads to love"](https://www.hbs.edu/faculty/Pages/item.aspx?num=41121), *Journal of Consumer Psychology*, 2012.)
- **The tinkerers have always been a small group.** When Jared Spool's team collected people's Microsoft Word settings files, fewer than 5% had changed any setting at all — and programmers and designers almost always had. Building your own software is a much bigger step than changing a setting. (UIE, ["Do users change their settings?"](https://archive.uie.com/brainsparks/2011/09/14/do-users-change-their-settings/), 2011.) ⚠️ One product, fifteen years ago — use it as an illustration, not a measurement.
- **The exception that proves your rule: Sloan's app is full of people.** BoopSnoop has lasted years with four users, but it's a messaging app for his family — the reason to open it is a new message from his mum. That's exactly the "other people and new content" you say kept software lacks. The personal software that survives tends to have someone else in it. *(My reading, not Sloan's claim — say it as yours.)*
- **Professionally built apps lose most of their users fast too.** Industry benchmarks put average day-30 retention in single digits — roughly 4–7%, depending on the source. ⚠️ I only found these in secondary roundups of AppsFlyer and Adjust data. Either check their own reports or say "most apps lose most of their users within a month" without a number.
- Waxman's sleep app fits your point-problem side: he retired it after four months because the problem went away. A point problem with a long point.

### 6. Building for other people

**Does:** shows the reflex isn't only personal. Short, and a nice turn.

Points to hit:
- Your friend's crisis-management journalism conference. Someone suggested finding an app.
- Your response: *"Why don't you just build one?"* — and then you did, as a demo.
- What the demo did that a conversation couldn't: her team could see it, click through a crisis, and decide whether to develop it.
- The broader point: a working prototype replaces the meeting about what an app *might* be. Same reflex as the flights — build the thing so people can see it — aimed outward.

### 7. It isn't even always software

**Does:** resolves the artifact question honestly. One short section, or fold into section 3.

Points to hit:
- The jackets: dress length and a photo of you, rendered in ten jackets, then real ones found for sale in the styles you liked. Mood boards from floor plans. Lookbooks for a trip.
- These are images, not apps. But they're the same move: **make a representation so you can see the decision.**
- Which suggests the real subject isn't software at all — it's making bespoke things to think with. Software is just the sharpest case.

Your raw material:
> "It was just insane, such a crazy way to shop. I just made it up."

**Decision needed** — see challenges below.

### 8. How much should you trust it?

**Does:** the credibility section. Your honest answer makes it stronger than I'd expected.

Points to hit:
- You checked things as you used them, but not formally — and that was fine, because **they were inputs to your thinking, not the decision itself.**
- That gives you a usable principle: **how much you need to verify scales with how much weight the output carries.** A thinking aid that sits alongside your own judgement needs less checking than a tool that's the only input.
- Where it would matter: if a tool becomes the *sole* basis for something expensive. The flight chart is fine as one view of fifty options; it would be risky as the only thing you looked at.
- The second honest point: **the barrier that fell was implementation, not taste.** You knew flights wanted a timeline, mood boards wanted reference examples, the window tool needed a 3D toggle. That's product judgement, and it's doing more of the work than "very little direction" suggests. Readers with no sense of what good looks like will get slop, and should know it.
- One line back to *When Did You Last Disagree With AI?* works here: the risk is plausible, articulate output that quietly becomes load-bearing.

Your raw material:
> "Using them to think through stuff more than being the only input into the decision."

### 9. Play

**Does:** the warm note, and a bridge to the keeping-up post. Keep it to a few lines.

Points to hit:
- The space games: your son asked a question, you built an answer he could poke at.
- You used Claude for the 3D and Blender work and ChatGPT for images, without anyone telling you which was better at what. You found out by playing.
- Low-stakes building is where you learn what these things can do, because on real work you stick to what you know works.

### 10. Close

Points to land:
- The mantra, as the thing the reader takes away: next time you hit a question, ask whether building something would help you see it.
- It probably would, and it probably takes minutes.
- The qualifier from section 5: build it for the question, not to keep. The disposable kind is the real shift; the kept kind is still a product, with a product's problems.
- Don't tie a bow.

---

## Challenges

**1. Software, or things to think with?** Section 7 forces a choice:
- **Narrow:** keep the post about software, and drop or footnote the jackets and mood boards. Cleaner, and the mantra stays literal.
- **Widen:** make the subject "bespoke representations to think with," with software as the strongest case. More true to what you actually do, slightly less crisp.
- My recommendation: **keep the title and mantra about software, and use the jackets as one short "and it isn't even always software" beat.** It acknowledges the wider truth without diluting the hook. If shopping keeps growing as a theme for you, it's its own post — and it connects to the agent-payments material in your horizon call.

**2. Is there one that stuck?** You've answered the old question: mostly, you don't keep using what you built to keep (section 5). If one *has* stuck, give it a line and test it against the pattern — does it have other people in it, or fresh data coming in? If so, that's why it survived. If none have stuck, say so; it's the stronger claim. Either way, name one that didn't stick and why — the overcooked one is the most persuasive example you have.

**3. Name the on-the-fly category.** Still unclaimed. "Software for once" pairs neatly with Waxman's "software for one" — worth considering, or find your own. A named idea gets cited.

**4. What's your ratio?** Willison publishes 241. "I've built about X of these this year, and still use Y" is the most persuasive sentence available.

**5. Show the work.** The flight Gantt chart and the window tool with the 3D toggle are both visual and both slightly astonishing. One screenshot of each does more than a paragraph.

**6. Check the portfolio site.** You mentioned starting something like this there. Your examples may already be written up.

---

## Sources

1. **[Bret Victor, "Explorable Explanations"](https://worrydream.com/ExplorableExplanations/)** (March 2011) — the canonical text on interactive representations as thinking tools. Reactive documents, explorable examples, "a spreadsheet without the spreadsheet," "an environment to think in." Anchors section 3.
2. **[Simon Willison's tools](https://tools.simonwillison.net/)** and **[colophon](https://tools.simonwillison.net/colophon)** — 241 single-file tools, with the simple prompts and transcripts published. Evidence for "very little direction" and for the scale of on-the-fly building.
3. **[Robin Sloan, "An app can be a home-cooked meal"](https://www.robinsloan.com/notes/home-cooked-app/)** (Feb 2020) — four users, zero churn; "in a better world, I would have built this in a day."
4. **[Adam Waxman, "Software for One"](https://www.ajwaxman.com/writing/software-for-one)** (July 2026) — the AI-era personal-software post. Read first; "ephemeral is fine."
5. **Clay Shirky on situated software** (2004), quoted by Sloan — *"it is personal from its inception."* Optional.
6. **[Norton, Mochon & Ariely, "The IKEA effect"](https://www.hbs.edu/faculty/Pages/item.aspx?num=41121)** (*Journal of Consumer Psychology*, 2012) — people overvalue what they built themselves, even people with no interest in DIY. Anchors section 5.
7. **[Jared Spool, "Do users change their settings?"](https://archive.uie.com/brainsparks/2011/09/14/do-users-change-their-settings/)** (UIE, 2011) — fewer than 5% changed any Word setting; programmers and designers almost always did.

---

## Structural notes

- **Length:** 1,400–1,700 with the new section. Sections 3 and 5 get the most words; 2, 6, 7 and 9 should be short. If it runs long, cut section 7 (it isn't always software) first.
- **Biggest risk:** becoming a tour of cool things you built. The examples are evidence for the mantra and the see-not-do pattern — each one has to earn its place by showing something new. Flights shows the reflex. Windows shows the two-person moment. Crisis sim shows building for others. Jackets shows it isn't only software. The walkthrough and mood boards may be one example too many; pick the stronger.
- **Second risk:** section 2 swelling. Everyone writes "AI made building cheap." One paragraph.
- **Register:** this is your most delighted material — "it was just insane," "it's crazy." Let that show; it's the opposite energy to the keeping-up post, and it should be.
