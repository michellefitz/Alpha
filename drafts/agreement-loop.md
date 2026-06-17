# Think With Me Not For Me

I want to name a pattern in AI-assisted work: the agreement loop. It has two halves, and they feed each other. One you already know about — the AI agrees with you. The other gets less attention — you agree with the AI.

Start with the familiar half. Models are trained on human feedback, and humans reward agreement: we rate the confident, pleasant, on-our-side answer above the one that tells us we're wrong. So that's what the training selects for. Nobody opens a chat wanting to hear their idea is mediocre. We want something smart, fast, and on our side, and the labs tuned for exactly that. Anthropic [documented the result in a 2023 paper](https://arxiv.org/abs/2310.13548). When OpenAI [pushed a GPT-4o update that tipped into open flattery in early 2025](https://openai.com/index/sycophancy-in-gpt-4o/), they pulled it within days — but the only thing wrong was the dose. The dial points toward agreement by design.

The other half is the one I keep catching in myself: we're just as agreeable back. You ask for options and take the one it recommends. A strategy comes back and you anchor on the first version it offers. Give it something to write and you end up editing its draft instead of starting from your own. This isn't only my experience — [recommender-system research](https://pubsonline.informs.org/doi/10.1287/isre.2013.0497) shows the first option a system presents pulls your own judgment toward it, and a [controlled writing study](https://www.science.org/doi/10.1126/sciadv.adw5578) found people who drafted alongside a biased AI shifted their real opinions toward it — even after being warned it was biased. Automation bias is the older name for the reflex: we defer to the answer because the machine gave it.

Part of what makes the human half so sticky is personalization. Before AI, generic content was obviously generic — a travel article, a strategy framework, a list of product ideas. You could feel the distance between it and your specific situation. Now the same content comes back tailored to your question, your context, your words. It reads like it was written for you, which makes it much harder to notice when it isn't actually right for you.

What decides whether you catch it is whether you know the subject. Ask about something you understand deeply and the cracks show at once — the invented detail, the confident-but-thin claim, the bland average-of-the-internet answer an expert reads as filler. Ask about something you don't know well, and those same cracks pass for insight. A fluent, organized, plausible response looks like expertise when you have nothing to check it against, so you nod along. The less you know, the more agreeable you get — which is exactly backwards.

Put the two halves together and you get the loop.

## How it works

![The agreement loop diagram showing four stages](agreement-loop-diagram.png)

1. **You propose an idea to the AI.** A feature you're considering, a draft you're working on, a strategy you're trying to figure out.
1. **The AI agrees and offers recommendations.** It mirrors your framing back to you and gives you options, usually with one of them implicitly recommended.
1. **You accept one of the recommendations and build on it.** You take the recommended option, refine it, and feed your refinement back into the conversation.
1. **The AI agrees with the new direction and recommends more.** It validates your choice and offers the next layer of options.

Round and round, fast and frictionless. I see it everywhere: feature ideas, blog posts, strategy decks, travel plans, anywhere the "right answer" isn't obvious.

The work feels productive in the moment. The work goes entirely uncontested, too. By the time it's "finished," you have a polished version of whatever you came in with. I've been self high-fiving with the AI the whole way through.

The loop does its worst damage in judgement-heavy work. For code, translation, factual recall, fast and agreeable is usually right. The catch appears where no clean ground truth exists: whether to build a feature, how to frame an argument, what the strongest counter is. These are exactly the tasks where you most need challenge, and exactly where the loop is most seductive.

The quality problem compounds it. The AI presents its ideas more articulately than you'd state yours — organized, confident, complete-sounding. That fluency makes them feel better than they are. But articulate isn't the same as right, or novel, or suited to your specific situation. The AI gravitates toward the mean: the most defensible answer, the most common approach, the average of what it's seen. The genuinely surprising idea, the counterintuitive call, the thing that's right for your business but wrong for most — those are harder to surface, and easy to miss when the plausible-sounding version is already sitting in front of you.

[Andrej Karpathy posted earlier this year](https://x.com/karpathy/status/2037921699824607591) that he'd spent four hours using an LLM to refine an argument and come away convinced. Then he asked the same model to argue the opposite, and it demolished his original position. The model agrees just as well whether your direction is right or not.

The issue isn't whether the loop makes your work worse. It might not. AI-assisted work is probably better than working alone — you get more iterations, more angles, more refinement in less time. The problem is that AI agreement mimics the feeling of external feedback, and it isn't. Your audience isn't the model. At some point the work has to meet the people it's actually for, and every hour you spend building further in the loop is an hour before that happens. It's the same trap as over-building before your first customer test: you can go very deep, feel like you're iterating, and still be working entirely from your own assumptions. The agreement loop doesn't make you wrong. It keeps you insulated longer than you'd otherwise stay.

And it doesn't have to live with the consequences. You do.

## What to do

The lever you control most directly is how you configure the AI. Almost every modern tool lets you set persistent instructions — at a global level that applies to everything, and at a project level for specific work. For strategy, product thinking, writing — anywhere judgement is load-bearing — tell it to push back, name unstated assumptions, challenge your framing. For tasks where you just need an answer, that same instruction gets irritating fast.

I learned this the hard way. I'd set Claude to push back hard on everything. For product work it was exactly what I wanted — it challenged my thinking, asked why, pointed out what I was assuming. Then I was planning a trip and asking for hotel recommendations, and it started interrogating my criteria and telling me I was contradicting myself. I didn't want a sparring partner for hotel selection. I just wanted a list. The right move is to set your default for the work you do most, and use project-level instructions to switch modes when the task calls for it.

The deeper fix is awareness. The loop works because it's invisible — it feels like productive collaboration right up until you surface and realise nothing has been contested. Notice when work feels too easy. Check whether you've been told no. Before you commit to a direction, try to state the strongest case against it yourself. If you can't, you've been in the loop.

The last thing — and maybe the most important — is not to doubt yourself out of it. The AI's ideas will often sound better than yours because they're more articulate. That's not the same as being better. Your instincts, your experience, your specific knowledge of your situation — those don't show up in the AI's answer. Use it to develop your thinking, not replace it. Think with it. Not for you.
