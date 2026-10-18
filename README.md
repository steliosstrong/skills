# Skills for Product People

Claude skills for taking a product from idea to a live, findable website. Written by Stelios Strongylis, Product leader with a UX background, not an engineer.

Use them in order as a pipeline, or pick one when you need it. Each works on its own.

```
product-scoping-doc  →  design-scoping-doc  →  ui-design  →  website-optimization
   what and why          how it should feel      the screens     ranks and gets cited
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
| [product-scoping-doc](skills/product-scoping-doc/SKILL.md) | Short interview, then a prose-first scoping doc: exec summary on top, about six sections, ends with open questions that drive decisions. | "Scope this out", "write a one-pager for X" |
| [design-scoping-doc](skills/design-scoping-doc/SKILL.md) | Turns the product scope into a design brief: design language, component feel, screen inventory, and one-word decisions. Built for an AI design tool to read. | "Scope the design", "write a design brief" |
| [ui-design](skills/ui-design/SKILL.md) | Generates a distinctive interface from a prompt, or refines a first draft (code, URL, screenshots) so it stops looking generic. | "Design this screen", "polish this draft" |
| [website-optimization](skills/website-optimization/SKILL.md) | Fixes a site end to end so it ranks on Google and gets cited by AI search. Fixes first, then lists every text it wrote for you to review. For non-technical owners. | "Optimize my website", "why doesn't my site show up?" |

## Why these exist

Specs get skimmed. Short, prose-first pages get read. Most AI output in product work is long, generic and decides nothing. These skills push back: short docs, real decisions, interfaces with a point of view, and a site that does its job.

## Credit

Free to use, adapt and share under the MIT license. If you republish or build on these skills, keep the credit line in each `SKILL.md` and link back to this repo.

## License

MIT © Stelios Strongylis
