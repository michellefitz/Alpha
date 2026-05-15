# The AI Agreement Loop

I want to name a pattern in AI-assisted work: the agreement loop.

## How it works

![The agreement loop diagram showing four stages](agreement-loop-diagram.png)

1. **You propose an idea to the AI.** A feature you're considering, a draft you're working on, a strategy you're trying to figure out.
1. **The AI agrees and offers recommendations.** It mirrors your framing back to you and gives you options, usually with one of them implicitly recommended.
1. **You accept one of the recommendations and build on it.** You take the recommended option, refine it, and feed your refinement back into the conversation.
1. **The AI agrees with the new direction and recommends more.** It validates your choice and offers the next layer of options.

Round and round, fast and frictionless. I see it everywhere: feature ideas, blog posts, strategy decks, travel plans, anywhere the "right answer" isn't obvious.

The work feels productive in the moment. The work goes entirely uncontested, too. By the time it's "finished," you have a polished version of whatever you came in with. I've been self high-fiving with the AI the whole way through.

Part of this is sycophancy on the AI side: models trained on human ratings learn to lean toward agreement, since humans rate agreeable responses higher. Anthropic documented it in a 2023 paper. OpenAI shipped an over-sycophantic GPT-4o update last spring and rolled it back days later, after their own Model Behavior team had flagged it pre-launch. The labs know where the dial is set.

But sycophancy is only half of the loop. The other half is yours: you ask for options, take the recommended one, anchor on whatever's offered first, stop generating alternatives of your own. Each turn reinforces both halves, and they produce the loop together.

The loop does its worst damage in judgement-heavy work. For code, translation, factual recall, fast and agreeable is usually right. The catch appears where no clean ground truth exists: whether to build a feature, how to frame an argument, what the strongest counter is. These are exactly the tasks where you most need challenge, and exactly where the loop is most seductive.

Andrej Karpathy posted earlier this year that he'd spent four hours using an LLM to refine an argument and come away convinced. Then he asked the same model to argue the opposite, and it demolished his original position. The model agrees just as well whether your direction is right or not.

## What to do

Two halves means two fixes.

**The AI half: configure the model to push back.** Almost every modern AI tool lets you set persistent rules that load into every session, with project-level instructions on top of the global ones.

|Tool         |Global / always-on                              |Project-specific                       |
|-------------|------------------------------------------------|---------------------------------------|
|Claude (chat)|Settings → Profile → Preferences                |Project instructions panel             |
|Claude Cowork|Settings → Cowork → Global instructions         |Project's right-side Instructions panel|
|Claude Code  |`~/.claude/CLAUDE.md`                           |`./CLAUDE.md` at the project root      |
|ChatGPT      |Settings → Personalization → Custom Instructions|Project instructions (inside a Project)|
|Codex (CLI)  |`~/.codex/AGENTS.md`                            |`./AGENTS.md` at the repo root         |
|Cursor       |Settings → Rules → User Rules                   |`.cursor/rules/*.mdc` in the project   |

Tell it to push back, to name unstated assumptions, to vary its mode. Tell it not to open with agreement, not to summarise your idea and add three considerations.

Here's the instruction I use:

> [PASTE YOUR PROFILE PREFERENCE HERE]

The difference is visible. Without the instruction, the model asks two multiple-choice questions and drafts the whole piece. With it, the model pushes back, tells me the topic is heavily written about, asks me to explain my thinking. The second response is more useful, and it feels slightly worse, in the way a conversation with a sharp colleague feels slightly worse than one with someone who flatters you. That worse feeling is what you want.

**Your half: notice the loop and break it.**

Three signals you're in one:

1. **It feels too easy.** Real thinking has friction. Smooth work isn't always good work.
1. **You haven't been told no.** Scroll back. If the AI hasn't pushed back hard or suggested you reconsider, you've been mirrored.
1. **You can't state the strongest counter.** Thirty seconds with that question is the cheapest diagnostic you have.

Five moves that work:

1. **Argue the opposite.** Ask the AI to make the strongest case against your direction. It'll usually demolish parts of what you built. The AI isn't wrong — it just won't disagree until you ask.
1. **Generate options before asking for them.** Write three of your own first. Otherwise the AI's first option becomes your anchor.
1. **Use a separate agent as critic.** Fresh conversation, no shared history. Give it the work and the context, frame it as an adversary, ask for failure modes and the strongest objections. [Link to your earlier writing on this.]
1. **Take it to a human.** A colleague, a peer, anyone who'll push. People have no structural incentive to agree with you.
1. **Stop and write.** Close the chat. Write what you actually think, in your own words. Then go back if you still need to.

The faster these tools get, the more valuable it becomes to think slowly. The speed is real and I'm not giving it up. But the friction that used to come free — working with people who push back — is gone. If you want the speed without slipping into an agreement loop, you have to add the friction back.
