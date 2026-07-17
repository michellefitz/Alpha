# Think With Me Not For Me

I want to name a pattern in AI-assisted work: the agreement loop. It has two halves, and they feed each other. One you already know about — the AI agrees with you. The other gets less attention — you agree with the AI.

The first half everyone has felt. When I started noticing how consistent it was, I went reading to understand why these systems behave this way, and the answer turns out to be human psychology, not machine behaviour. Models are tuned with reinforcement learning from human feedback: people rate responses, and the model learns to produce more of what we rate highly. What we rate highly is agreement. [Anthropic's own research](https://arxiv.org/abs/2310.13548) traced it directly — we consistently prefer the confident, on-our-side answer over the one that tells us we're wrong. Nobody opens a chat hoping to hear their idea is mediocre. That's the part I find fascinating: the flattery isn't some quirk of the technology. It's a human preference we've trained into the thing we built. Us, reflected back.

The other half is the one I keep catching in myself: we're just as agreeable back. You ask for options and take the one it recommends. A strategy comes back and you anchor on the first version it offers. Give it something to write and you end up editing its draft instead of starting your own. The reading explained this too. [Research on recommender systems](https://pubsonline.informs.org/doi/10.1287/isre.2013.0497) shows the first option a system presents pulls your judgment toward it. A [controlled writing study](https://www.science.org/doi/10.1126/sciadv.adw5578) found people who drafted alongside a biased AI shifted their real opinions toward the bias — even after being warned it was there. Automation bias is the older name for the reflex: the machine gave the answer, so we defer.

You notice the over-agreement most where you know the subject. Talk to an expert peer about something you both have opinions on and the conversation has friction — they push, they disagree, it's fun. Ask the AI and it's a little echoey. The cracks show: the invented detail, the confident-but-thin claim, the average-of-the-internet take. Ask about something you *don't* know well, though, and those same cracks pass for insight. The less you know, the more agreeable you get — which is exactly backwards.

Put the two halves together and you get the loop.

## How it works

![The agreement loop diagram showing four stages](agreement-loop-diagram.png)

1. **You propose an idea to the AI.**
1. **The AI agrees and offers recommendations.** It mirrors your framing back and gives you options, usually with one implicitly recommended.
1. **You accept one and build on it.**
1. **The AI agrees with the new direction and recommends more.**

The work feels productive. Nothing gets contested. By the time it's "finished," you have a polished version of whatever you walked in with — and I've been self high-fiving with the AI the whole way through.

For code, translation, factual questions, fast and agreeable is mostly fine: there's a right answer and you'll hit it. The risk is judgement work — whether to build the feature, how to frame the argument, what the strategy should be. There's no ground truth to check against, and the AI states its suggestions more articulately than you'd state yours. Articulate isn't the same as right. It's just easier to agree with.

[Andrej Karpathy](https://x.com/karpathy/status/2037921699824607591), one of the best-known researchers in AI, posted that he'd spent four hours refining an argument with an LLM and came away convinced by it. Then he asked the same model to argue the opposite — and it demolished his original position. That's the loop at its worst. It can walk you, step by agreed step, into work you're certain is good, and someone outside the swirl takes one look and sees junk. Every step got validated. Nothing got tested. And the AI doesn't have to live with the consequences. You do.

## What to do

Two questions do most of the work.

**Have you pushed back on anything?** Disagreed, rejected an option, sent it down a different path — anywhere in the session. If you haven't, that's the signal. Pushing back is the act that proves you're driving: when you've done it, you've got a thinking partner. When you haven't, it's been thinking for you.

**Can you explain why — without looking at the chat?** Not repeat the conclusion back — explain how you got there, in your own words. Why this approach and not the others. Why that feature. Why that recommendation. Thinking that's yours you can explain from any angle; thinking you've borrowed collapses at the first follow-up question. That's the deeper risk of the loop: shallow thinking that looks great. If you can't explain it, who's in control?

The other lever is how you set the AI up. I changed my default instructions to be less agreeable — push back, challenge me, question my assumptions. For strategy work it was exactly what I wanted. Then I asked for hotel recommendations and it started interrogating my criteria. I didn't want a sparring partner. I wanted a list.

So when you kick off a piece of work, think for a moment about the mode you want the AI in. How agreeable or how challenging? How much free rein or how much oversight? Keep your default instructions tuned for the broad run of everyday questions, and give specific pieces of work their own project instructions: what would the ideal partner for this strategy, this research, this analysis be like? How would you want them to behave? A few lines is plenty — it won't fix everything or transform the model, but it's often enough to nudge it into being the partner that piece of work actually needs.
