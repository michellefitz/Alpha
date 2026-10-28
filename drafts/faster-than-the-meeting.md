# Faster Than the Meeting

About six months ago I started asking a different question. Not "should we build this" or "who could build this" — just: *could I build software to solve this?*

I ask it about almost everything now. Some of what comes out is a toy I abandon the same evening. Some of it is a personal tool nobody else will ever see. Some of it I think could be a real product. The hit rate doesn't matter much, which is the first strange thing about it.

Almost all of it happens in voice mode. That started as a convenience and turned into the main event. I can articulate far more nuance out loud than I can be bothered to type, and I can do it while walking, or cooking, or waiting somewhere. Last week was the start of the school year — properly chaotic days, kids coming and going, nothing resembling a block of focused time. I slotted updates to a couple of products into the gaps between everything else.

At the end of it I asked what had changed over the previous few days, and got back a summary. It read exactly like the Friday update from a whole team: new features, a bit of research, some enhancements, tech debt paid down, bugs fixed. Pre-AI I would have read that and been genuinely impressed. I'd have praised the velocity, told them it was a great week's work.

It was me. Talking. In between making breakfast.

## The part I'm still guessing at

I don't want to oversell how much I understand. I've got a better feel than I had for which models suit which work, but it's a feel, not knowledge.

Within one provider I still struggle to tell you which model I should be using for a given task, and at which effort level. I'm throwing darts in the dark most of the time. A lot of what I build isn't complex — but I can't write the code, so I can't judge how complex it actually is, which means I can't judge what it needs. I suspect I over-index high. Reach for the bigger model, turn the effort up, on the theory that more is safer. I genuinely don't know if that's right.

What I have got better at is cross-checking. I'll get one model to research something, then hand its answer to another and ask what it makes of it. Playing them off each other surfaces things neither would have told me alone. Claude told me flatly that a couple of open datasets I was after didn't exist; GPT found them; I brought them back and got a cheerful "oops, my bad — you're right." I've stopped using Claude for image generation entirely. I've been poking at on-device transcription versus sending it to a service, mostly to understand the trade-off rather than because I need to.

This is the genuinely fun part. It feels like getting to know a set of tools rather than reading their documentation.

The exhausting part is that none of it stays still. A good half of what I use now didn't meaningfully exist when I started. You get your head around the current set, you feel like you've got it — and then it moves, and you're doing it again. It takes a long time to learn something and no time at all for it to be superseded.

And you can't shortcut it, which is what makes it different from learning any other product. Normally you can look at a thing, read the feature list, skim some reviews, and know within twenty minutes roughly what it is and whether it's for you. Not here. You have to get in and use it, for a while, on your actual work. The differences between two options are subtle, and whether they matter depends entirely on what you're doing. Worse: the thing you're evaluating might not be a better version of what you already do. It might unlock a way of working you hadn't considered — and you have to notice that yourself, or you won't notice it at all.

There's no review that tells you that. You find it by using it.

Hold onto that, because it turns out to be the same shape as the thing I actually want to write about.

## What we were protecting

Here is what I keep coming back to.

I've spent a lot of my career in product management. On a small feature — genuinely small — the process would look like: a week of design, research alongside it, painstakingly built interactive prototypes, users brought in to test them, feedback gathered on very fine details, iterations, a technical plan, estimates, a release lined up, bugs worked through on the way. Months of collective attention on something modest.

The other day I was sharing an early release with a few people and wanted a feedback box in it. Click a button, box appears, sends me an email. I explained it in about thirty seconds and carried on making breakfast. A few minutes later it was live, and I messaged a friend to say it was there if they wanted to use it while they were poking around.

That is ridiculous. And the interesting question isn't why it's fast now — it's why it used to be so slow. Because the building was never the slow part of that feature. A feedback form was never a week of engineering.

The slow part was the deciding. And the reason deciding took so long is that so much of product management had quietly become **de-risking**.

Look at that list again and ask what each step was actually for. The research, the prototypes, the rounds of design review, the sign-offs. Some of it was genuinely about building the right thing. But a lot of it — more of it than I was comfortable admitting at the time — was insurance against spending expensive engineering time on something that turned out not to be valuable. The prototype existed so that we wouldn't build the wrong thing. The research existed so that someone could point at it if the thing didn't work.

That's opportunity cost, and opportunity cost is real. It has always been real and it still is. I'm not going to pretend that caring about it was a mistake. But the *amount* we spent guarding against it was, very often, wildly out of proportion to the thing being guarded.

And here's the part I find uncomfortable. If that's what the job largely consists of, then that's the skill people get good at. We built a profession that rewards de-risking more than it rewards building good products. I think that's a decent chunk of why there are so many mediocre product managers around — not because they're bad at their jobs, but because they're good at the job as it was actually structured. Get good at de-risking and you get promoted.

I include myself in that. I got good at de-risking. Enough customer research to be defensible. Enough market evidence to survive the question. Designs walked through enough rounds of feedback that nobody could say they hadn't been consulted. None of these are bad things on their own. It's the proportion, and the honest motivation underneath, that I'd argue with now.

And it did buy something. By the time we started building we knew exactly what we were building, roughly how long it would take, when it would ship. Marketing could be lined up. Dependencies could be sequenced. That certainty was the product of all that process, and it was worth something to a lot of people.

It just cost more than it was worth, most of the time, for most things.

Now I can build the thing faster than I could get everyone into a room to decide whether to build it. Not "faster than we could build it before" — faster than we could hold the *meeting*.

## A different skill set

None of this means build everything. That's the obvious bad reading and it's wrong. Opportunity cost didn't disappear, it moved — off your engineers' time and onto your attention, and the moment anyone else is involved, theirs.

What changed is *when* the discipline happens. De-risking sat in front of the building because building was the expensive, irreversible part. You did the research so you wouldn't have to build the wrong thing. Now building it is very often the cheapest way to find out. The prototype costs less than the meeting about the prototype. A good half of what we used to answer with research is now answerable by making the thing and looking at it.

Which is the same problem I have with model releases, arriving from the other direction. I can't tell from the outside whether a tool is better for my work — I have to use it. I don't think I could ever tell from the outside whether a feature was worth having either. I just had a process that made it look like I could.

So the question stops being *can you get this built* and becomes *can you build a good product*. And I think that's where good product managers are about to separate from average ones, quite sharply.

The people who'll do well are the ones who can spot a customer problem that's genuinely valuable to solve. Who notice a new pattern forming, or a new way of solving something that wasn't available last year. That's a different skill from the one the job has been selecting for.

Because look at what the old set actually was: executing projects well, leading teams, navigating ambiguity, managing stakeholders, running the research studies, aggregating the feedback, keeping the whole thing moving. That was good work. It was genuinely what was needed. But a lot of it existed *because* de-risking existed — it was the machinery for spending engineering time safely. Take away the need to spend engineering time safely and a surprising amount of it is scaffolding around a building that's already up.

I don't say that as a criticism of the people. The job rewarded it, so people got good at it. I got good at it.

What I think a lot of us now have to do is stop and ask some genuinely uncomfortable questions. How tuned in am I, really, to what makes this product good? Do I understand the customer — not their persona, their actual world? Where does this thing sit in it? What job does it do for them? What do they find valuable, as opposed to what did well in a survey?

That's back-to-basics product work, and it's been buried for years under mechanics. Frameworks, ceremonies, artefacts, all the visible apparatus that made it look like more work was happening. Strip that out and what's left is caring about the thing you're building, the person you're building it for, and the details. Which was always the job.

## So where is it?

Here's what nags at me, though.

For all this efficiency in engineering, I'm genuinely shocked at how little of it has reached me as a customer. The products I use every day are not noticeably better than they were. Not faster, not less buggy, not obviously richer. Some of them have barely moved.

Maybe they have and I'm not noticing. Maybe it's arriving slowly and I'll look up in a year. I honestly don't know. But the gap between how much gets written about the speed of building and how little has changed in the software I actually open every morning is strange, and I keep turning it over. What are they all doing with it?

The uncomfortable answer I keep landing on is that the efficiency is going into work that doesn't matter very much.

Every team has the list. All the things that never cleared the prioritisation bar. The bug backlog nobody could justify a sprint for, the tidy-ups, the small requests, the long tail. We spent years saying *if only we had the capacity* — imagine what we could do with more capacity, look at everything on this list.

Well, now there's capacity. And I suspect a lot of teams are working straight down that list, shipping all of it, and it isn't landing. Because the list was never a list of high-value work. It was a list of things that lost, repeatedly, on purpose, to better things. Clearing it feels like enormous progress and may change almost nothing. Ten things shipped before lunch is not better than one thing that mattered.

Which brings the whole thing round. We treated engineering time as the scarce resource and built an entire discipline around protecting it. Then it stopped being scarce — and the products carried on more or less as they were.

That's the part I can't get past. Capacity was never the thing standing between those products and being good. We've just run the experiment that proves it, and I'm not sure many people have noticed the result.
