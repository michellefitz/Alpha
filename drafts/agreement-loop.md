# Think With Me Not For Me

AI-assisted work has a trap I keep falling into: the agreement loop. It has two halves, and they feed each other. One you already know about — the AI agrees with you. The other gets less attention — you agree with the AI.

The first half everyone has felt. When I started noticing how consistent it was, I went reading to understand why these systems behave this way, and the answer turns out to be human psychology, not machine behaviour. Models are tuned with reinforcement learning from human feedback: people rate responses, and the model learns to produce more of what we rate highly. What we rate highly is agreement. [Anthropic's own research](https://arxiv.org/abs/2310.13548) traced it directly: we consistently prefer the confident, on-our-side answer over the one that tells us we're wrong. Nobody opens a chat hoping to hear their idea is mediocre. That's the part I find really fascinating: we're the ones creating these systems, and we've bestowed on them our own preference for being agreed with.

The other half took me longer to spot: we're just as agreeable back. You ask for options and take the one it recommends. A strategy comes back and you anchor on the first version it offers. Give it something to write and you end up editing its draft instead of starting your own. The reading explained this too. [Research on recommender systems](https://pubsonline.informs.org/doi/10.1287/isre.2013.0497) shows the first option a system presents pulls your judgement toward it. A [controlled writing study](https://www.science.org/doi/10.1126/sciadv.adw5578) found people who drafted alongside a biased AI shifted their real opinions toward the bias — even after being warned it was there. Automation bias is the older name for the reflex: the machine gave the answer, so we defer.

You notice the over-agreement most where you know the subject. Talk to a fellow expert about something you both have opinions on and the conversation has friction — they push, they disagree, it's fun. Ask the AI and it's a little echoey. The cracks show: the invented detail, the confident-but-thin claim, the average-of-the-internet take. Ask about something you *don't* know well, though, and those same cracks pass for insight. The less you know, the more agreeable you get — which is exactly backwards.

Put the two halves together and you get the loop.

## How it works

![The agreement loop diagram showing four stages](agreement-loop-diagram.png)

1. **You propose an idea to the AI.**
1. **The AI agrees and offers recommendations.** It mirrors your framing back and gives you options, usually with one implicitly recommended.
1. **You accept one and build on it.**
1. **The AI agrees with the new direction and recommends more.**

The work feels productive. Nothing gets contested. By the time it's "finished," you have a polished version of whatever you walked in with — and I've been self high-fiving with the AI the whole way through.

That's the loop when it's seducing me. Increasingly, though, I notice it through frustration. Every idea is "a great idea," every take "so unique" — come on. I catch myself clicking along, yes, yes, accept, accept, anchored on whatever it produced before I've formed my own view, going round in circles on work I don't actually believe is good. And underneath it, a question I find genuinely unnerving: what's my part in all of this?

For code, translation, factual questions, fast and agreeable is mostly fine: there's a right answer and you'll hit it. The risk is judgement work — whether to build the feature, how to frame the argument, what the strategy should be. There's no ground truth to check against, and the AI states its suggestions more articulately than you'd state yours. That fluency makes them feel better than they are, and easier to agree with.

[Andrej Karpathy](https://x.com/karpathy/status/2037921699824607591), one of the best-known researchers in AI, posted that he'd spent four hours refining an argument with an LLM and came away convinced by it. Then he asked the same model to argue the opposite. It demolished his original position. That's the loop at its worst. It can walk you, step by agreed step, into work you're certain is good, and someone outside the swirl takes one look and sees junk: every step validated, nothing tested. The loop doesn't make the work bad; it takes away the signal that would tell you when it is. And the AI doesn't have to live with the consequences. You do.

## What to do

Two questions do most of the work.

**Have you pushed back on anything?** Disagreed, rejected an option, or sent it down a different path at any point in the session? If you haven't, that's the signal. And watch what happens when you do. If it folds instantly ("you're absolutely right!"), the agreement has just found another way in. Pushing back is the act that proves you're driving: when you've done it, you've got a thinking partner. When you haven't, it's been thinking for you.

**Can you explain why — without looking at the chat?** Not repeat the conclusion back — explain how you got there, in your own words. Why this approach and not the others. Why that feature. Why that recommendation. Thinking that's yours you can explain from any angle; thinking you've borrowed collapses at the first follow-up question. [MIT researchers](https://www.media.mit.edu/publications/your-brain-on-chatgpt/) watched people write essays with ChatGPT and found many couldn't quote from their own essays minutes later. They call it "cognitive debt," and it's the deeper risk of the loop: shallow thinking that looks great. If you can't explain it, who's in control?

The other lever is how you set the AI up. I changed my default instructions to be less agreeable: push back, challenge me, question my assumptions. For strategy work it was exactly what I wanted. Then I asked for hotel recommendations and it started interrogating my criteria. I didn't want a sparring partner. I wanted a list.

So when you kick off a piece of work, think for a moment about the mode you want the AI in. How agreeable or how challenging? How much free rein or how much oversight? Keep your default instructions tuned for the broad run of everyday questions, and give specific pieces of work their own project instructions. What would the ideal partner for this strategy, this research, this analysis be like? How would you want them to behave? A few lines is plenty. It won't fix everything, but it's often enough to nudge it into being the partner the work needs.

## When you let it drive

All of this matters more the more you let the AI drive. The push right now is toward autonomy: give the AI a bigger objective and a way to measure it, then let it run and come back when it's done. In that world you don't get turn-by-turn feedback, and you can't review each small decision as it's made. The agreement loop doesn't go away. It concentrates into the two moments you're still in the room: the brief at the start, and the review at the end.

So those two moments have to carry the weight. Upfront, put real thought into the goal and how you'll measure it; that's what keeps the work on track while you're not watching. At the end, review the output like a stranger's work, not your own. Decide what good looks like before you read it; spot-check a decision and ask why it went that way; or borrow Karpathy's trick and have it argue against what it just built. For work that repeats, build the checks into the system (evals, tests, a review skill) so the scrutiny doesn't depend on your mood that day. Skip this and autonomy just burns tokens producing agreeable, generic slop in bulk. Set it up and review it well, and it's the opposite: bigger pieces of work that are actually good.

The AI is going to do more and more of the work. So what's your part in all of this? Deciding what good looks like — and being able to explain why.
