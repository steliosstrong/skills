---
name: "design-scoping-doc"
description: "Create a design scoping doc that gives an AI design tool or design engineer the design language, component feel and screen inventory to start from. Use after a product scoping doc, or standalone when the user asks to scope the design, write a design brief, or set design direction."
---

# Design Scoping Doc

A prose-first scoping document for the design phase. It is the handoff between product scoping and design execution: precise enough that an AI design tool can generate from it and a design engineer can build from it, short enough that it gets read. It is the natural next step after a product-scoping-doc, and it works standalone. A later refinement pass (the ui-design skill, in refine mode) reads this doc's decisions, so the checklist at the end is also machine input, not just discussion fuel.

The doc scopes the design, not the pixels. It establishes the design language and the component styleguide as a starting point, lists what must be designed, and closes with decisions phrased so they take one word to answer. It never prescribes layouts or final visuals; that is the designer's or the tool's job.

House style, non-negotiable:
- Prose only. No code blocks, no CSS, no token tables, no rendered mockups. Words and references carry the design language.
- Qualitative motion language by default. Describe how interactions should feel (crisp, calm, alive, deliberate), not durations, curves or property names. The one exception is the opt-in line in Craft expectations below.
- Humane and tight: plain language a colleague would use, no jargon, no filler.
- Never use em dashes anywhere in the doc; use commas, colons, or hyphens.
- Around six sections, soft ceiling of two pages. The summary reads in a minute, the doc in five.
- Every doc ends with a decision checklist the reader can answer in one word per line.

## Internal quality bar (do not print this list in the doc)

The doc's design language must be compatible with sound interface craft, expressed qualitatively. When writing the Component styleguide and Craft expectations, encode these principles in plain words:

- Frequency governs motion: things used constantly should respond instantly with no ceremony; occasional moments can have presence; rare or first-time moments can delight. Keyboard-driven actions never animate.
- Interfaces respond on press, not after: every pressable element acknowledges touch immediately and subtly.
- Entrances feel immediate and settle quickly; nothing appears from nowhere or lingers. Exits are quicker than entrances.
- Overlays and menus grow from where they were summoned; dialogs hold the center.
- Perceived speed is the goal: the product should feel faster than it is, never slower.
- Motion respects people: reduced-motion users get a calm equivalent, touch devices never inherit hover behavior.
- Cohesion over spectacle: one personality across the product; motion, type and color all say the same thing.
- Unseen details compound: defaults must be beautiful because most of the product ships as defaults.

These shape the prose. They are stated as the product's own standards, never listed as external rules, quoted as numbers, or attributed to any person, book or source.

## Step 1: Ingest, then interview

First look for product context that already exists: a product-scoping-doc output in this chat, an attached or recently produced scoping file, or a pasted brief. If found, read it fully and never re-ask what it answers. Pull the problem, user, scope phases, constraints and success measures from it.

Then interview on design direction only, using AskUserQuestion when available, 3 to 6 questions in one round:

1. **Aesthetic direction.** Mood in a few words, two or three reference products or sites the result should sit beside, personality (playful to austere), density (airy to compact).
2. **Brand constraints.** Existing logo, colors, typefaces or design system to honor, or greenfield. If greenfield, whether the doc should propose a direction or leave it open.
3. **Platform and tech.** Web, iOS, Android or several; the framework or component library if known; dark mode at launch or later; smallest screen that matters.
4. **Motion personality.** How alive the product should feel, from nearly still to playful, and any moment that deserves celebration (a first success, a completion).
5. **Shape, imagery and voice.** Shape language (sharp corners, soft corners, pill); imagery strategy (generated images, real photography, labeled placeholders, none); copy register (technical, editorial, marketing). Offer these as pick-ones; whatever the user leaves open goes to Decisions needed.
6. **Only if standalone** (no product scope found): who the primary user is and the one action that matters most. Everything else product-level becomes an open question, never invented.

If answers stay thin, ask one shorter follow-up round at most, then draft and mark gaps.

## Step 2: Structure

Use these sections in order. Skip what doesn't apply.

### 1. Summary
One paragraph: what is being designed, for whom, the aesthetic in one sentence, and what the reader (tool or engineer) is being asked to produce.

### 2. Design language
The starting point for all design work. Two or three paragraphs of prose covering: the mood and the references and what specifically to take from each; the typographic voice (confident and large, quiet and bookish, technical and dense); how color behaves (restrained with one accent, warm and saturated, near-monochrome); how space breathes (generous, efficient); the shape language once decided (sharp, soft or pill, held everywhere); the personality line the product never crosses (for example, friendly but never cute). Name real references; never leave the language abstract.

### 3. Component styleguide
The feel and conduct of the core components, in prose, as a starting point a tool or engineer can extend. Cover the families the product actually needs, typically: buttons and pressables, inputs and forms, overlays (menus, popovers, dialogs, drawers), feedback (toasts, loading, empty, error, success), navigation, and lists or cards. For each family, one to three sentences on its character and behavior: how it responds to the hand, how it enters and leaves, what state changes look like, what it must never do. Motion stays qualitative and consistent with the chosen motion personality.

### 4. Screens and states to design
The inventory of work. Each screen or view on one line, with the states it needs in brackets (empty, loading, error, success, partial, first-time vs returning). Mark what already exists in any material as existing, the rest as to design. Group by flow when there are more than six screens.

### 5. Constraints
Tight bullets only for what is real: platform and framework, brand assets to honor, imagery strategy once decided, accessibility target (WCAG 2.2 AA by default), localisation, performance expectations stated qualitatively (instant-feeling navigation), deadlines. Unknown constraints are omitted, not guessed.

### 6. Craft expectations
A short prose paragraph setting the quality bar from the internal principles above, in this product's voice. For example: everything pressable acknowledges the press; frequent actions respond without ceremony; the product should feel faster than it is; one personality throughout; reduced motion is respected. Five sentences at most.

Opt-in precision: if the user says two tools or people will generate from the same doc, or asks for consistency across generations, add one closing line to this section translating the motion personality into named values (typical durations, easing family, press response), kept to a single sentence. Otherwise omit it.

### 7. Decisions needed
Mandatory, always last. The easy-to-reply checklist: every open design decision phrased as yes/no or pick-one, each on its own line, answerable in one word. Always include the three refinement locks when the user has not already decided them, because the refinement pass depends on them:
- Shape language: sharp / soft / pill
- Imagery: generated / real photography / placeholders / none
- Copy register: technical / editorial / marketing
Other examples of the form:
- Dark mode at launch: yes / no
- Density: airy / balanced / compact
- Celebration moment on first completion: yes / no
- Reference to lead with: [A] / [B]
When the skill ran standalone, add a final sub-list titled "Product gaps" with the product-level unknowns (success measure, scope boundary, secondary users), still phrased for one-word or one-line answers where possible.

## Rules

- Never invent brand assets, references the user didn't approve, metrics or deadlines; unknowns go to Decisions needed.
- Never include code, CSS, token values or pixel values; named motion values appear only through the opt-in line above.
- Never attribute the craft principles to any named designer, author or source; they are the doc's own standards.
- Never restate the product scoping doc; link or name it in one line and build on it.
- The doc must be generable-from: read the finished doc as if you were the AI design tool; if any section would force a guess about direction (not about layout), tighten it.
- If the user pushes back on a direction, adjust once and keep the doc theirs.

## Step 3: Output

Ask the user where the doc should land each time:
- **Markdown file**, the default; save it and present it.
- **Google Doc**, if a Drive connector is available, in the folder the user names.
- **Other tool** (Notion, Claude Doc, docx) via the matching connector or skill if available.

If the chosen destination fails, save as Markdown, present it, and say in one line what happened.

Close the chat message with the Decisions needed checklist repeated inline so the user can answer immediately, one answer per line. When they reply, update the doc in place and do not reintroduce resolved decisions.