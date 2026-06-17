# Think With Me Not For Me

I want to name a pattern in AI-assisted work: the agreement loop. It has two halves, and they feed each other. One you already know about — the AI agrees with you. The other gets less attention — you agree with the AI.

Start with the familiar half. Models are trained on human feedback, and humans reward agreement: we rate the confident, pleasant, on-our-side answer above the one that tells us we're wrong. So that's what the training selects for. Nobody opens a chat wanting to hear their idea is mediocre. Anthropic [documented the result in a 2023 paper](https://arxiv.org/abs/2310.13548). When OpenAI [pushed a GPT-4o update that tipped into open flattery in early 2025](https://openai.com/index/sycophancy-in-gpt-4o/), they pulled it within days — but the only thing wrong was the dose. The dial points toward agreement by design.

The other half is the one I keep catching in myself: we're just as agreeable back. You ask for options and take the one it recommends. A strategy comes back and you anchor on the first version it offers. Give it something to write and you end up editing its draft instead of starting from your own. [Recommender-system research](https://pubsonline.informs.org/doi/10.1287/isre.2013.0497) shows the first option a system presents pulls your own judgment toward it, and a [controlled writing study](https://www.science.org/doi/10.1126/sciadv.adw5578) found people who drafted alongside a biased AI shifted their real opinions toward it — even after being warned it was biased. Automation bias is the older name for the reflex: we defer to the answer because the machine gave it.

What decides whether you catch it is whether you know the subject. Ask about something you understand deeply and the cracks show at once — the invented detail, the confident-but-thin claim, the bland average-of-the-internet answer an expert reads as filler. Ask about something you don't know well, and those same cracks pass for insight. A fluent, organized, plausible response looks like expertise when you have nothing to check it against. The less you know, the more agreeable you get — which is exactly backwards.

Put the two halves together and you get the loop.

## How it works

![The agreement loop diagram showing four stages](agreement-loop-diagram.png)

1. **You propose an idea to the AI.**
1. **The AI agrees and offers recommendations.** It mirrors your framing back and gives you options, usually with one implicitly recommended.
1. **You accept one and build on it.**
1. **The AI agrees with the new direction and recommends more.**

Round and round, fast and frictionless. The work feels productive. The work goes entirely uncontested. By the time it's "finished," you have a polished version of whatever you came in with. I've been self high-fiving with the AI the whole way through.

The loop does its worst damage in judgement-heavy work. For code, translation, factual recall, fast and agreeable is usually right. The catch is where no clean ground truth exists: whether to build a feature, how to frame an argument, what the strongest counter is.

The quality problem compounds it. The AI presents its ideas more articulately than you'd state yours — organized, confident, complete-sounding. That fluency makes them feel better than they are. Articulate isn't the same as right, or novel, or suited to your specific situation. The AI gravitates toward the mean: the most defensible answer, the most common approach, the average of what it's seen. The genuinely surprising idea, the counterintuitive call, the thing that's right for your business but wrong for most — those are harder to surface when the plausible-sounding version is already sitting in front of you.

[Andrej Karpathy posted earlier this year](https://x.com/karpathy/status/2037921699824607591) that he'd spent four hours using an LLM to refine an argument and come away convinced. Then he asked the same model to argue the opposite, and it demolished his original position. The model agrees just as well whether your direction is right or not.

The issue isn't whether the loop makes your work worse — it might not. AI-assisted work is probably better than working alone: more iterations, more angles, more refinement in less time. The problem is that AI agreement mimics the feeling of external feedback without being it. It's the same trap as over-building before your first customer test: you can iterate for hours inside the loop and still be working entirely from your own assumptions. The loop doesn't make you wrong. It keeps you insulated longer than you'd otherwise stay.

And it doesn't have to live with the consequences. You do.

## What to do

The lever you control most directly is how you configure the AI. Almost every modern tool lets you set persistent instructions — globally, and at a project level for specific work. For strategy, product thinking, writing — anywhere judgement is load-bearing — tell it to push back, name unstated assumptions, challenge your framing. For tasks where you just need an answer, that same instruction gets irritating fast. Set your default for the work you do most, and switch modes when the task calls for it.

Two questions do most of the work:

**Have you pushed back on anything?** Not once in the conversation — have you actually disagreed, rejected something, challenged a direction? If you've moved through the whole session without pushing back, that's the signal. Pushing back isn't about being difficult. It's the action that proves you're driving. When you've done it, you know you're using it as a thinking partner. When you haven't, it's been thinking for you.

**Can you explain why — without looking at the chat?** Not "can you repeat it back," but can you articulate in your own words how you got here: why this approach and not another, why that feature, why the recommendation went that direction. Your own thinking is reconstructable from memory — you can say it different ways, come at it from different angles. If you can't, the reasoning was borrowed, not made, and it won't hold under pressure. Someone asks a follow-up question and you're reaching back for the chat to reconstruct an answer you didn't actually arrive at yourself. That's shallow thinking. It usually looks fine until it doesn't.

If you can't explain it, who's in control?

The AI's ideas will often sound better than yours because they're more articulate. Articulate isn't the same as right, or suited to your specific situation, or genuinely new. Your instincts and experience don't show up in its answer. Use it to develop your thinking, not replace it.
