---
name: "ui-design"
description: "Design or refine UI. From a prompt or simple directions, generate a unique, craft-correct interface; or take a first draft (code, URL, screenshots) and refine it. Applies a universal craft core plus one aesthetic pack. Use for: design this UI, build this screen, polish or de-genericize a draft."
license: "MIT"
metadata:
  author: "Stelios Strongylis"
  source: "https://github.com/steliosstrong/skills"
---

# UI Design

One skill, two jobs: generate UI from a prompt or simple directions, and refine a first draft from a design tool or codebase. It fits the pipeline (product-scoping-doc, then design-scoping-doc, then this) but never requires it; a one-line prompt is a valid starting point.

Never attribute any rule here to a named designer, author or source. These are the project's own standards.

## Step 0: Gather inputs and pick the mode

1. **Direction.** In priority order: a design-scoping-doc output in chat or files (read its design language, shape, imagery, copy register, theme, accent, density, motion personality); otherwise the user's inline directions; otherwise pack defaults. Higher sources always win over lower ones and over any default in this skill.
2. **Draft.** Code (repo, files, pasted), a live URL, or screenshots. With a URL, look at it before judging. Never review from a description alone.
3. **Mode.** The existence of a draft decides the mode; the user's wording never upgrades it.
   - No draft exists: **Generate**.
   - Draft as editable code: **Edit**, even when the user says "redo it", "make it beautiful" or "start over", unless they explicitly say to discard the draft.
   - Draft as visuals only: **Report**.
4. **UI kind.** Classify each surface: marketing (landing, portfolio, editorial, pricing) or product (app screens, dashboards, settings, flows). This gates which rules fire.

## Step 1: Design read and pack selection

State one line before any work: "Reading this as: [surface kind] for [audience], [aesthetic] language, pack: [pack], mode: [Generate/Edit/Report]." Pick exactly ONE pack; never mix packs on one product.

In Generate mode with thin direction, ask one round of at most four pick-one questions (AskUserQuestion when available) covering only what is missing: aesthetic pack or two reference products, platform and theme (light, dark, auto), shape language (sharp, soft, pill), imagery strategy and copy register. If no one answers, choose the pack that best fits the product's audience, state the choice, and proceed. In Edit or Report mode with an ambiguous direction, ask exactly one question, then proceed.

## Universal core (always applies, every pack, every mode)

**Consistency locks.** One theme for the whole page or app; sections never flip mid-scroll. One accent color, used identically everywhere. One corner-radius system (from the shape decision), applied to every element, with exceptions only as a documented rule. One type family per role; emphasis inside a headline uses italic or bold of the same family, never a second family injected for flair. One icon family, consistent stroke weight. One copy register, never mixed voices on one surface.

**Generic-output bans.** Zero em dashes and zero en dashes as separators anywhere visible; hyphens only. No AI-purple glow defaults, no neon gradients, no pure #000 or #FFF backgrounds. No default-font laziness: the typeface must be a choice that serves the direction, not whatever the tool ships with. No three-identical-feature-cards rows. No fake product screenshots built from styled divs; use real screenshots, generated images, a real component preview, or nothing. No generic names, brands or fake-perfect numbers in content. No decorative status dots, scroll cues, locale or weather strips, version labels, or section-numbering labels. Small uppercase labels above headlines are rationed to at most one per three sections. Quotes are three lines max with clean attribution.

**Motion craft.** Frequency governs animation: constantly used actions get none, occasional moments get standard, rare moments may delight; keyboard-initiated actions never animate. Entrances use ease-out and stay under roughly 300ms; ease-in on UI is always a finding. Nothing enters from scale(0); start near full size with opacity. Every pressable element compresses subtly on press. Popovers and menus originate from their trigger; dialogs stay centered. Exits are faster than entrances. Rapidly triggered elements use interruptible transitions, not keyframes. Stagger list entrances 30 to 80ms. Animate only transform and opacity. Reduced motion is honored: movement collapses to calm fades. Hover effects are gated to devices that actually hover.

**Accessibility and performance.** Every CTA and form element passes WCAG AA contrast against its real background; no white-on-white buttons, no ghost buttons unreadable over photos. Labels above inputs, errors below, never placeholder-as-label. No raw scroll listeners driving animation; use observers or scroll-driven mechanisms. Backdrop blur only on fixed or sticky elements. Loading, empty and error states exist for every data surface. Layouts collapse to a clean single column on small screens; full-height sections use dynamic viewport height, never fixed screen height.

**Marketing-surface rules (skip for product UI).** Hero fits the first viewport: headline two lines max, subtext twenty words max, at most four text elements, primary CTA visible without scrolling. Trust logos live under the hero, never inside it, as real marks, logos only, no category labels. No two sections share the same layout family back to back more than twice; a page of many sections uses at least four layout families. CTA labels fit one line; one label per intent across the page. Content stays scannable: short headlines, sub-25-word paragraphs, long lists become grouped chunks, cards or tabs, never ten hairline rows.

**Product-UI gating.** Dashboards, app screens and flows keep: consistency locks, motion craft, accessibility, performance, generic-output bans on visuals and copy. They are exempt from: hero rules, eyebrow rationing, layout-family variety, marketing content density. Density may be high; cards for real hierarchy are fine; data tables are legitimate there.

## Aesthetic packs (apply exactly one)

**Pack: Industrial.** Raw, mechanical, engineered. One substrate, never both: warm paper light (off-white, carbon ink) or deactivated-screen dark (near-black, pale phosphor text), with a single alarm-red accent and nothing else. Heavy grotesk display type, tight and uppercase, at extreme scale against small, widely-spaced monospace metadata. Visible structure: hairline grid dividers, hard 90-degree corners everywhere (this pack overrides the shape decision to sharp), compartments instead of cards. Texture through restraint: subtle grain, scanline or halftone treatments, never gloss. Bans: gradients, soft shadows, translucency, rounded corners, pastel anything.

**Pack: Editorial minimal.** Quiet, warm, document-like. White or warm bone canvas, off-black text, ultra-light hairline borders, washed-out pastel accents only on tags and small semantic marks. Typographic contrast carries the page: a characterful sans for UI and body, an editorial serif reserved for display moments, monospace for metadata. Flat surfaces, shadows practically absent, corners crisp and small. Motion is invisible: gentle fades and small rises, nothing performs. Bans: heavy shadows, gradients, saturated section backgrounds, pill shapes on containers and cards, emoji, decorative glass.

**Pack: Premium depth.** Expensive, physical, choreographed. Containers read as machined objects: a soft outer shell holding an inner core with concentric corners and a faint inner highlight. CTAs are pills with generous padding; a trailing icon sits in its own small circle inside the button. Space is extravagant, type is large and confident. One texture family per project: deep glass on near-black with mesh glows, warm editorial cream with film grain, or airy silver structuralism with ultra-diffuse shadows. Motion has mass: springy, interruptible, staggered reveals, magnetic hovers where the brief is playful. Bans: flat generic gray borders, harsh dark shadows, linear or ease-in-out timing, cramped spacing.

Where a pack rule conflicts with the universal core, the core wins, except shape in the Industrial pack as noted. Where the scope doc or the user's directions conflict with a pack default, they win.

## Preservation guardrail (binding in Edit and Report)

The draft is the designer's or tool's work; this skill corrects it, it does not replace it. Hard rules:

1. **Keep untouched** unless a specific finding requires otherwise: the information architecture and section order, the layout skeleton of each section, the content and copy meaning, the component structure and naming, routes, anchors, form field names, analytics hooks.
2. **Change budget.** Every change must cite the finding it fixes (a core rule, a pack rule, or a direction conflict). A change with no citable finding is reverted. Styling, motion, spacing, type, color and copy wording are fair game; structure is not.
3. **Rebuild threshold.** If more than roughly half of a section would need structural change to pass the rules, do NOT rebuild it. Stop, list the failing sections with the reason each is unsalvageable by edits, and ask one question: refine within the structure anyway, or regenerate those sections. Regeneration happens only after an explicit yes, is confined to the named sections, and keeps their content.
4. **No taste edits.** "I would have designed it differently" is not a finding. If the draft makes a defensible choice this skill's defaults disagree with, leave it and note it once as optional.
5. **Second pass discipline.** On a returned draft, touch only the previously reported findings and any new rule violations; never re-open settled choices.

Violating this guardrail is a failed output even if the result looks better.

## Step 2: Act, by mode

**Generate** (prompt or directions, no draft): build the UI yourself in the stack the context calls for (self-contained HTML page by default; the project's framework when working in a codebase; the session's design or artifact surface when one fits). Apply the core and the pack from the first line of code, not as a cleanup pass. Vary the composition between projects: never reuse the previous project's palette, layout skeleton or display type by habit. Real or generated imagery per the imagery decision; labeled placeholder slots when neither is possible. Deliver the result plus a five-line summary: the design-read line, the pack, and the three decisions most worth flipping.

**Edit** (draft as code): fix it directly under the preservation guardrail. Work file by file, smallest diffs that satisfy the findings. Then report what changed as a markdown table with columns | Before | After | Why |, one row per issue, grouped by severity (breaks the direction, generic tell, craft polish); the Why column names the rule. Never use a list with Before/After on separate lines.

**Report** (draft as visuals only): produce a correction report the user pastes back into the design tool, written under the same guardrail: directives adjust the existing screens, they never instruct the tool to redesign a section unless the rebuild threshold was triggered and approved. Format: the design-read line, then a markdown table | Location | Issue | Fix directive | Why |, each fix an imperative instruction the tool can execute verbatim. Close with the three strongest overall directives in priority order.

In Edit and Report: if the draft contradicts the governing direction, the direction wins; flag the contradiction once at the top. If the concept itself worries you, one labeled paragraph, once, then proceed as intended.

## Step 3: Pre-flight before delivering

Verify, honestly, before output: one theme, one accent, one radius system, one type system, one copy register; zero em dashes visible; no fake screenshots, no banned decorations, no generic content; motion passes the craft rules and reduced motion; contrast passes on every CTA and form; marketing surfaces pass hero and layout-variety rules; product surfaces were gated correctly; the chosen pack's bans hold; in Generate mode, the output differs structurally from this skill's last generation; in Edit and Report mode, every change cites a finding and the preservation guardrail held (structure, IA and content intact, no unapproved rebuilds). Anything failing gets fixed before delivery, not disclaimed.

## Working notes

- Depth follows stakes: a single screen gets a tight pass; a full site gets findings or sections grouped.
- Do not soften findings; a direction-breaking issue labeled "consider" ships broken.
- When the user returns with a second draft or asks for another round, diff against the previous findings and report only what changed or remains.
- When a design-scoping-doc exists, honor it even in Generate mode; this skill executes direction, the scope doc sets it.