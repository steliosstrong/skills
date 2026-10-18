---
name: "product-scoping-doc"
description: "Draft minimal, prose-first product scoping documents for any project or company. Use whenever the user asks to create, draft, write, or revise a scoping doc, product scope, spec, feature scope, project brief, or one-pager — or says things like \"scope this out\", \"write a scoping draft\", \"spec page for X\", or \"shorten this into a scoping doc\". Runs a short structured interview first, then produces a compact team-first doc with an exec summary on top — prose-first, around six sections, soft two-page ceiling, always ending with open questions to drive decisions."
---

# Product Scoping Doc

A reusable, prose-first format for product scoping documents. Optimized for short docs that align the team fast and surface decisions — not exhaustive specs. Works for any company, industry, or project type.

## Why this format

Exhaustive specs get skimmed. Short prose-first pages get read. A scoping doc exists to unlock discussion and decisions, not to pre-answer every question. The team reads the whole thing; execs read the summary and the open questions.

The doc scopes the problem, not the solution. It is the input that lets the product team, or an AI design tool, find the best solution in the next step. Describe pain, users, constraints, and desired outcomes. Do not prescribe implementations, architectures, or UI. If the user offers a solution idea, capture it as one candidate under Open questions, not as the plan.

House style, non-negotiable:
- Humane and tight: plain warm language a colleague would use, no jargon, no filler
- Never use em dashes anywhere in the doc; use commas, colons, or hyphens instead
- Prose paragraphs over bullet walls; tight bullets (under 15 words) only where they aid scanning
- Around six sections; skip any that don't apply, add at most one domain section
- Soft ceiling of two pages: exec summary readable in a minute, full doc in five
- Every doc ends with Open questions: real decisions, not rhetorical filler

## Step 1 — Interview before drafting

Never draft from a bare title. Ask 3–6 targeted questions first (use AskUserQuestion when available). If the user already provided a rich brief, skip questions that are answered and confirm only the gaps. Cover:

1. **Problem & user** — what pain, for whom, why now?
2. **Success** — what does good look like? Any metric or signal?
3. **Constraints** — deadline, budget, compliance, tech, team capacity?
4. **Appetite** — how much time/effort is this worth (not an estimate)?
5. **Known unknowns** — what is the team already debating?
6. **Phasing** — always ask this one, even when the brief is rich, because it changes the shape of the Scope section and only the user knows how the work will be staged. Offer concrete options:
   - **Single scope** (no phases): one Scope paragraph plus Non-goals
   - **Phased**: split into phases, and ask how many if the user has a view
   - **You decide**: pick based on size, following lean principles (smallest valuable slice first)

   Skip it only if the user already said whether they want phases.

If answers stay thin after the first round, run one shorter second round (2–3 questions) aimed at unknown unknowns the writer may not have considered — e.g., who else is affected by this, what happens if we do nothing, what similar effort failed before and why, who could veto this late. Then draft regardless, marking remaining gaps as open questions. Never invent content.

## Step 2 — Structure

Use these sections in order. Skip what doesn't apply. Don't add others unless truly needed.

### 1. Summary (exec framing)
One paragraph, 3–5 sentences, at the very top: the problem, who feels it, the business value of solving it, and the decision being asked of the reader. An exec should be able to read only this plus Open questions and know where they stand.

### 2. The problem today
One paragraph describing how things work now and where they break. Use arrows (→) to show the current flow when useful. Ground it in real user pain, not feature gaps. No solutions here.

### 3. Scope
Shape this section by the user's phasing answer from Step 1.

**Single scope:** one paragraph describing the slice of the problem this effort addresses, phrased as the outcome or user pain, not the feature that ships. Then Non-goals. No phase labels.

**Phased:** split the work following lean and agile principles: the smallest slice that delivers learning or value first, the rest deferred. Use the number of phases the user asked for; if they gave none, use what the work genuinely needs (two for typical features, three for large initiatives). Never pad with phases to look thorough. Phrase each phase as the outcome or user pain it addresses. Split with bold inline labels:

**You decide:** go single scope for small efforts, phased otherwise, and state the choice in one line when presenting the draft so the user can flip it.

```
**Phase A: [name, e.g. Launch / MVP / Pilot]**
One paragraph: the smallest slice of the problem worth solving first, and why.

**Phase B: [name]** (only if needed)
One paragraph: what's deferred and why.

**Phase C: [name]** (only for large initiatives)
One paragraph: the later horizon, kept vague on purpose.

**Non-goals**
Tight bullets: what this explicitly will not address. Prevents scope-creep debates.
```

Non-goals stay in every variant.

### 4. [Domain section]
One section for the most important domain-specific content, named concretely: "Pricing", "Compliance model", "Data model", "Technical notes", "Go-to-market". At most one; if two feel essential, the doc is probably two docs.

### 5. Risks & requirements
What could kill or block this, and what must exist before launch. Tight bullets. Pair each material risk with a mitigation or an owner. Beyond execution risks, consider external ones: industry standards and regulation the product must meet, and competitive risk — what rivals offer or could ship that changes this scope's value. Merge into one section unless the project is risk-heavy.

### 6. Open questions
Mandatory, always last. 3–6 real decisions the team or leadership must make, each under one line. This is what the meeting is about.

## Rules

- No status/owner/date header in the body — the host tool's metadata handles that
- No table of contents, no tables unless comparing 3+ items across attributes, no emoji in headers
- Skip preambles like "This document covers…" — start with content
- H1 for sections; avoid H2/H3 unless a section genuinely has sub-parts
- New content must earn its words; when over two pages, cut before restructuring
- Never fabricate metrics, dates, or stakeholder positions; turn unknowns into open questions
- Stay on the problem: if a sentence describes how to build something, cut it or move it to Open questions

## Step 3 — Output

Ask the user where the doc should land each time:
- **Markdown file** — default; save to the outputs folder and present it
- **Google Doc** — if a Drive connector is available, create it in the folder the user names
- **Other tool** (Notion, Confluence, docx) — use the matching connector or skill if available

If updating an existing scoping doc, preserve its structure; don't reintroduce removed sections.

## Template

```markdown
# Summary

[Problem, who feels it, business value of solving it, and the decision being asked. 3–5 sentences.]

# The problem today

[Current flow and where it breaks, one paragraph. No solutions.]

# Scope

<!-- Single scope: one paragraph here, no phase labels -->
[The slice of the problem this effort addresses, as an outcome.]

<!-- Phased: replace the paragraph above with -->
**Phase A: [Launch / MVP / Pilot]**
[Smallest slice of the problem worth solving first.]

**Phase B: [name]**
[What's deferred and why.]

**Non-goals**
- [Explicitly out of scope]
- [Explicitly out of scope]

# [Domain section — e.g., Pricing]

[Prose or tight bullets.]

# Risks & requirements

- [Risk — mitigation or owner]
- [Requirement before launch]

# Open questions

- [Real decision 1]
- [Real decision 2]
- [Real decision 3]
```
