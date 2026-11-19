# Skills for Product People

Claude skills for taking a product from idea to a live, findable website or app. Written by [Stelios Strongylis](https://strongyl.is), Product leader with a UX background, not an engineer.

Use them in order as a pipeline, or pick one when you need it. Each works on its own.

```
product-scoping-doc  →  design-scoping-doc  →  ui-design  →  ui-stress-test  →  website-optimization
   what and why          how it should feel     the screens    what breaks        ranks and gets cited
```

## Install

**Claude app (claude.ai, desktop, mobile)**

1. Open the [`downloads`](downloads) folder and download the `.zip` of the skill you want.
2. In Claude, go to Customize, then Skills ([claude.ai/customize/skills](https://claude.ai/customize/skills)).
3. Click +, then Create skill, then Upload a skill.
4. Upload the `.zip`.

**Claude Code or any other agent**

```
npx skills@latest add steliosstrong/skills
```

Install a single skill:

```
npx skills@latest add steliosstrong/skills --skill product-scoping-doc
```

**Manual**

Copy any `SKILL.md` into your project, or paste it into a chat.

## The skills

| Skill | What it does | Say something like |
| --- | --- | --- |
| [product-scoping-doc](skills/product-scoping-doc/SKILL.md) | Takes your idea, asks a few questions, and gives you a short scope doc with everything you need: what to build, why, how you'll know it worked, and what's still open. | "Scope this out", "write a one-pager for X" |
| [design-scoping-doc](skills/design-scoping-doc/SKILL.md) | With or without a product scope, creates a detailed design brief with all the design components you need: look and feel, components and the list of screens. | "Scope the design", "write a design brief" |
| [ui-design](skills/ui-design/SKILL.md) | Takes a prompt or your first draft (code, URL, screenshots) and gives you screens that don't look AI-generated. | "Design this screen", "polish this draft" |
| [ui-stress-test](skills/ui-stress-test/SKILL.md) | Takes your page, design or component and tests it against the worst-case data that can break the UI (long names, missing fields, 1,000+ items, emoji). You get what broke and a fix for each. | "Stress-test this page", "try the worst case" |
| [website-optimization](skills/website-optimization/SKILL.md) | Ask it to check your website and it fixes what keeps you from ranking in search engines and getting cited by AI search. Then it lists every text it changed for you to review. | "Optimize my website", "why doesn't my site show up?" |

## Why these exist

Specs get skimmed. Short, prose-first pages get read. Most AI output in product work is long, generic and decides nothing. These skills push back: short docs, real decisions, interfaces with a point of view, and a site that does its job.

## Credit

Free to use, adapt and share under the MIT license. If you republish or build on these skills, keep the credit line in each `SKILL.md` and link back to this repo.

## License

MIT © Stelios Strongylis
