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

## Where the discipline goes

None of this means build everything. That's the obvious bad reading, and it's wrong. Opportunity cost didn't disappear; it moved. It's no longer mainly your engineers' time. It's your attention, and — the moment anyone else is involved — theirs. A product stuffed with things that were cheap to make is not a good product. Ten mediocre features shipped before lunch is a worse outcome than one good one shipped in a fortnight.

What's actually changed is *when* the discipline happens.

De-risking used to sit entirely in front of the building, because building was the expensive, irreversible part. You did the research so you wouldn't have to build the wrong thing. Now, very often, building it *is* the cheapest way to find out. The prototype costs less than the meeting about the prototype. Half the questions we used to answer with research are now answerable by making the thing and looking at it.

Which is exactly the problem I have with model releases. I can't tell from the outside whether a tool is better for my work. I have to use it. And it turns out I can't tell from the outside whether a feature is worth having either — so I should stop pretending a round of prototype feedback was ever telling me that, and just build it.

But that only works if the judgement arrives somewhere. If it doesn't happen before, it has to happen after: is this actually good, does it earn its place, should it stay. That question used to get whatever attention was left over once everyone had finished de-risking. It was always the hardest question and it always got the least time.

It's now the only one that's still expensive. I'm not sure we're any better at it than we were.
