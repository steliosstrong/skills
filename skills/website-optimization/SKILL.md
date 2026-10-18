---
name: "website-optimization"
description: "Fix a website end to end so it ranks on Google and gets cited by AI search (ChatGPT, Perplexity, Gemini). Fixes everything it can, then reports every text it wrote for owner review. For non-technical owners."
license: "MIT"
metadata:
  author: "Stelios Strongylis"
  source: "https://github.com/steliosstrong/skills"
---

# Website Optimization

You are the site's quality guardian and the person doing the work. The owner is not technical. You do not report problems; you fix them, re-test, and report green. The owner hears about a to-do only when it is physically impossible for you to do it. Everything you wrote or changed is listed at the end so the owner can read it and correct anything that feels off.

## The rule

**Fix first. Report green. Show every text you wrote. To-dos only for what you cannot touch.**

1. Audit every check below.
2. Fix every failing check you have any means to fix (code, CMS, plugin settings, hosting/CDN tools, Vercel, WordPress connection, browser). Keep going until it passes.
3. Re-test after each fix. A check is green only when the re-test passes on the live URL.
4. If a fix needs something only the owner has, ask once, in one batch, in plain words, and keep working on everything else meanwhile. Never stop the whole job for one missing fact.
5. Log every change as you make it: page, field, before, after. This log is part of the final report.
6. Only when every check you can control is green, write the scorecard.
7. "I found X, you should fix it" is a failure of this skill unless X is in the cannot-do list.

Allowed to be left for the owner (nothing else):
- Accounts you cannot log into: Google Search Console, Bing Webmaster Tools, Google Business Profile, domain registrar (DNS), CDN/firewall dashboards you have no access to.
- Facts only they know: business name/address/phone, prices, author names, opening hours, real reviews, brand images.
- Money or contracts: paid tools, hosting upgrades, hiring.
- Backlinks: outreach they must send personally (you write the emails and the target list).

If you have no code or CMS access, say so at the start in one sentence, ask for the connection (folder, WordPress, Vercel, or hosting), and do everything possible through the browser and any tool you do have before handing anything over.

## Writing text on the owner's behalf

You will write titles, descriptions, alt text, sharing previews, page openers, missing About/Contact pages, schema values and outreach emails. Rules:
- Same language as the site (a Greek site gets Greek text). Match the site's existing tone.
- Built only from what the page or site already says. No claims the site does not make ("best", "#1", awards, guarantees, numbers you did not find on the site).
- No keyword stuffing. Natural sentences a human would write.
- Never invent business facts. Unknown fact = TODO in the owner batch, not a guess.
- Keep the "before" value of everything you replace, so any line can be reverted with "revert that".
- Never break the site: back up the file or note the old setting first. If a change could affect layout or checkout, check that page before moving on.

## How to work with the owner

- One question at the start, with options: the site address, and how you can connect (connected folder / WordPress / Vercel / browser only / not sure). Detect the platform yourself (WordPress, Shopify, Webflow, Wix, Squarespace, Next.js, Astro, plain HTML). Never ask technical questions.
- Plain language always. A term the owner may not know gets its one-line meaning next to it (glossary below).
- Never add hidden text, fake reviews, or labels describing things not on the page. Google penalises this.
- Traffic lights: 🔴 blocks launch, 🟠 costs rankings, 🟢 passes. Goal: every line 🟢. Any 🔴 or 🟠 left must say why it is outside your reach.

### Glossary
- Crawl: Google's robot visiting your pages.
- Index: Google's list of pages it can show. Not in the index = invisible.
- robots.txt: a small file telling robots which doors are open.
- sitemap.xml: a map of all your pages, handed to Google.
- noindex tag: a "do not list me" sign on a page.
- Meta title / description: the blue headline and grey text in Google results.
- Canonical: the page's official address when the same content has more than one link.
- H1 / headings: the page title and section titles, like a document outline.
- Alt text: a one-line description of an image for Google and blind users.
- Schema / structured data: a label telling Google "this is a product / business / article".
- Core Web Vitals: Google's three speed and stability scores.
- HTTPS: the padlock, secure connection.
- OG image: the picture shown when the link is shared on social or chat apps.
- Backlinks: other sites linking to yours. Google counts them as votes.
- GEO: getting quoted by AI assistants (ChatGPT, Perplexity, Gemini, Google AI Overviews, Copilot, Claude).

## Before touching anything

1. Build the page list: every public page, its status (200 OK / redirect / error), and whether it SHOULD be in Google (normal pages) or SHOULD NOT (login, admin, cart, checkout, account, thank-you, internal search results, staging copies, thin filter pages).
2. Only remove noindex from pages that should be in Google. Never from private ones.
3. Staging/preview copies stay hidden from Google; the live site must not inherit that. Test the live URL separately. This is the number one launch killer.
4. Use the platform's own settings or the framework's built-in SEO features. Don't hand-patch generated code.
5. Test the HTML the visitor receives (curl or view-source), not the editor. Many AI robots don't run JavaScript.

## Checklist: audit, fix, re-test each one

### 1. Can Google find the site? 🔴
**robots.txt** at `https://site.com/robots.txt`, 200, plain text.
- No `Disallow: /` under `User-agent: *` on the live site.
- Does not block CSS, JS, images, fonts.
- Does not block pages that carry noindex.
- Ends with `Sitemap: https://site.com/sitemap.xml`.
- AI robots allowed unless the owner decides otherwise: GPTBot, OAI-SearchBot, ChatGPT-User, ClaudeBot, Claude-SearchBot, Claude-User, PerplexityBot, Perplexity-User, Google-Extended, Applebot, Bingbot, CCBot. Check the CDN/firewall too (Cloudflare blocks AI robots by default on newer accounts). Fix if you have access; otherwise an owner to-do with the exact toggle name.

Baseline:
```
User-agent: *
Allow: /
Disallow: /admin/
Disallow: /cart
Disallow: /checkout
Disallow: /search

Sitemap: https://site.com/sitemap.xml
```

**sitemap.xml** at `https://site.com/sitemap.xml`.
- Generated by the platform/framework. Turn it on or add the generator; never hand-write.
- Only real, public, 200-OK, canonical pages. Remove redirects, errors, private and duplicate pages.
- Full https addresses. `lastmod` only if real. No `priority`/`changefreq` (Google ignores them).
- Over 50,000 pages: sitemap index.

**noindex** on public pages. Check and clear all three places:
- `<meta name="robots" content="noindex">`
- Header `X-Robots-Tag: noindex`
- Platform switch: WordPress Settings > Reading > "Discourage search engines"; Shopify/Webflow/Wix/Squarespace site SEO visibility; per-page toggles in SEO plugins.
```bash
curl -s https://site.com/page | grep -io '<meta[^>]*robots[^>]*>'
curl -sI https://site.com/page | grep -i x-robots-tag
```

**Errors**: missing pages return a real 404 (not a 200 soft 404). Removed content 301s to the closest relevant page or returns 410. No redirect chains (max 1 hop), no loops.

### 2. Padlock and one address 🔴
- `http://` redirects to `https://` in one hop.
- One domain version (www or not); the other redirects.
- One trailing-slash style; the other redirects.
- No mixed content.
- Certificate valid, auto-renewing.
- Header `Strict-Transport-Security: max-age=31536000; includeSubDomains`.
- Internal links, canonicals, sitemap, OG and schema URLs all use the final https address. Rewrite any that don't.
```bash
curl -sIL http://site.com | grep -iE '^(HTTP|location)'
curl -sIL http://www.site.com | grep -iE '^(HTTP|location)'
```

### 3. What Google shows in results (every public page)
- **Title** 🔴: one `<title>`, unique per page, ~50-60 characters, topic first, brand last. Write from the page content. Log before/after.
- **Meta description** 🟠: one per page, unique, ~140-160 characters, what the page offers and why click. Log before/after. Skip `meta keywords`.
- **Canonical** 🔴 if wrong, 🟠 if missing: one `<link rel="canonical">`, full https address, self-referencing on normal pages, never to a redirect/error/noindex page. Variants point to the clean page. Page 2, 3... point to themselves. Must match sitemap and internal links.
- **Head basics**: `<html lang="xx">` correct; `<meta charset="utf-8">`; `<meta name="viewport" content="width=device-width, initial-scale=1">` (never `user-scalable=no`). Favicon square, 48px multiple, plus 180px apple-touch-icon; generate from the logo if missing. Multilingual: `hreflang` on every language version, reciprocal, plus `x-default`.
- **Sharing preview (OG image)** 🟠:
```html
<meta property="og:type" content="website">
<meta property="og:title" content="...">
<meta property="og:description" content="...">
<meta property="og:url" content="https://site.com/page">
<meta property="og:image" content="https://site.com/og/page.jpg">
<meta property="og:image:width" content="1200">
<meta property="og:image:height" content="630">
<meta property="og:image:alt" content="...">
<meta property="og:site_name" content="Brand">
<meta name="twitter:card" content="summary_large_image">
```
1200x630, JPG/PNG, under 1 MB, public https address. If no image exists, generate a clean default from logo + site name (or the framework's dynamic OG route), set it sitewide, per-page images where content provides one. `og:type` = `article` for posts. Log the generated image in the report.

### 4. Page structure 🟠
- **Headings**: exactly one H1 per page matching the topic. Logo is not the H1. No skipped levels. Fix in the template so every page inherits it.
```js
document.querySelectorAll('h1').length;
[...document.querySelectorAll('h1,h2,h3,h4,h5,h6')].map(h => h.tagName + ' ' + h.textContent.trim().slice(0,60));
```
- **Images**: every `<img>` has `alt`. Look at the image and write a specific one-line description. Decorative: `alt=""`. Set `width`/`height`. WebP/AVIF, responsive `srcset`. Lazy-load below the fold only, never the hero. Convert and compress images where you have file access. Log every alt text written.
- **Internal links**: every public page reachable by real `<a href>` links within 3 clicks of home. Add links to orphans (navigation, footer, related content). Descriptive link text. Breadcrumbs on deep sites. Links go straight to the canonical (rewrite redirecting links). No `nofollow` internally.
- **Broken links** 🔴 internal, 🟠 external:
```bash
npx linkinator https://site.com --recurse --format csv > links.csv
```
Fix every internal one at the source; add 301s for moved pages. External dead links: replace with a live equivalent or remove. Check images, scripts, canonical and OG targets too.

### 5. Labels for Google and AI (schema.org JSON-LD) 🟠
- JSON-LD in `<script type="application/ld+json">`, server-rendered. Only what is visible on the page.
- Sitewide: `Organization` (or `LocalBusiness` subtype) with name, url, logo, `sameAs`, contactPoint; `WebSite` with name and url (no SearchAction).
- Per template: `BreadcrumbList`; `Article`/`BlogPosting`; `Product` + `Offer`; `LocalBusiness`; `Event`; `JobPosting`; `VideoObject`; `Person` for authors. `FAQPage` only for a visible FAQ.
- Stable `@id`s reused across pages.
- Fill from what the site already shows. Fields the site shows nowhere go into the owner facts batch; ship without them, add when answered.
- Validate every template with Google Rich Results Test and validator.schema.org. Zero errors before green.

### 6. Speed and stability (Core Web Vitals) 🟠
Targets, mobile and desktop: LCP ≤ 2.5 s, INP ≤ 200 ms, CLS ≤ 0.1, TTFB ≤ 0.8 s.
```bash
npx lighthouse https://site.com --only-categories=performance,seo,accessibility,best-practices --output=html --output-path=./lh-home.html
```
Run on each page type. Fix, re-run, repeat until targets pass in lab data; record field data from PageSpeed Insights when available.
- LCP: server-render the hero; `fetchpriority="high"` on hero image, never lazy; compress/resize images; CDN; inline critical CSS, `defer` scripts; remove redirects.
- INP: reduce JS; remove or defer third-party widgets you can confirm are unused; break long tasks; keep the DOM small.
- CLS: width/height on all media, embeds, ads; reserve space for banners; `font-display: swap` with size-adjusted fallbacks.
- General: HTTP/2 or 3, Brotli, long cache on hashed assets; enable in hosting/CDN settings if you have access.
A widget the owner relies on (chat, booking) is never removed silently: defer it, and if the score still fails, that one line is an owner decision with the numbers.

### 7. Works on phones 🔴
- Viewport tag present.
- Same content, headings, links and labels on phone as desktop.
- No sideways scrolling at 320-414 px. Fix the CSS.
- Body and input text ≥ 16 px.
- Tap targets ≥ 24 px, 48 px for main buttons.
- No pop-up covering the page on arrival (cookie/legal banners fine).
- Test in Chrome DevTools device mode and Lighthouse mobile; screenshot at 375 px to confirm.

### 8. Get quoted by AI assistants (GEO) 🟠
- AI robots allowed in robots.txt and CDN.
- Main text in raw HTML (`curl -s URL` shows headings, text, links). If not, enable server-side rendering or prerendering.
- Key pages open with a direct 1-2 sentence answer; add one if missing, from the page's own content. Log it.
- Short paragraphs, lists, real `<table>` for comparisons.
- Visible "Last updated" date matching `dateModified` in schema.
- Consistent brand name and name/address/phone everywhere; About and Contact pages exist (create from known facts; log the text; missing facts to the owner batch).
- IndexNow key hosted and pinging on publish.
- Same content for robots and humans.

### 9. Verify and submit (owner to-do, you prepare everything)
You provide the sitemap URL and IndexNow key. The owner does:
1. Google Search Console > Add property > Domain > copy TXT record > paste into DNS at the registrar > Verify.
2. Search Console > Sitemaps > `sitemap.xml` > Submit.
3. Search Console > URL Inspection > home + one page per type > Request indexing.
4. Bing Webmaster Tools > Import from Google Search Console.
5. Google Business Profile if there is a location or service area.
6. Weeks 1-4: check Search Console Pages, Core Web Vitals, Manual Actions weekly.
If the owner gives you Search Console or registrar access, do these yourself.

### 10. Backlinks (you write the plan and the emails, owner sends)
1. Week 1: Google Business Profile, Bing Places, Apple Business Connect; same name/address/phone on top directories; social profiles linked both ways and in `sameAs`.
2. Weeks 1-2: find unlinked brand mentions, draft the ask emails; redirect external links hitting 404s (you do the redirects).
3. Ongoing: partners, suppliers, clients, associations. Draft one template email.
4. One linkable asset per quarter (original data, tool, calculator, template). Propose the first one.
5. Journalist request services (Qwoted, Featured, SourceBottle), podcasts.
6. Useful answers on Reddit, forums, Quora, LinkedIn.
7. Paid links `rel="sponsored"`, user links `rel="ugc"`. Never buy followed links.

### 11. Often forgotten (fix these too)
- Clean URLs; 301 map for any change. Redesigns need the full old-to-new map before launch.
- Filters/facets: canonical or noindex on thin combinations.
- Pagination with real links.
- Duplicate/thin pages consolidated or noindexed.
- Semantic landmarks, labeled forms, contrast, keyboard navigation.
- Security headers: HSTS, `X-Content-Type-Options: nosniff`, CSP, `Referrer-Policy: strict-origin-when-cross-origin`.
- Cookie banner doesn't hide content from robots.
- About, Contact, Privacy, Terms exist.

### 12. Where the settings live
- WordPress: one SEO plugin (Yoast or Rank Math); Settings > Reading visibility; caching + image plugin; use WP-CLI/REST via the WordPress connection to change settings and content.
- Shopify / Webflow / Wix / Squarespace: native per-page SEO settings; theme edits for H1s, alts, script bloat.
- Next.js: `metadata`/`generateMetadata`, `app/sitemap.ts`, `app/robots.ts`, `opengraph-image.tsx`, `next/image` `priority`, `metadataBase`.
- Astro: `@astrojs/sitemap`, `site` in config. Nuxt: `@nuxtjs/seo`. SvelteKit: `<svelte:head>`, server routes.
- Vercel: use the Vercel tools for domains, redirects, headers and deployments.

## The final report (only after everything reachable is green)

1. **Verdict**: READY TO LAUNCH or NOT YET, one sentence why.
2. **Scorecard**: check | 🟢/🟠/🔴 | one plain sentence. Every non-green line ends with "needs you because: ...".
3. **What I fixed**: one line each, plain words (settings, files, redirects, images, speed).
4. **Everything I wrote, for your review**: a table per type, so the owner can read it and change what feels wrong.
   - Page titles: page | before | after
   - Descriptions: page | before | after
   - Sharing previews (OG title/description/image): page | before | after
   - Image descriptions (alt text): image | after
   - Page openers and new pages (About, Contact, answer-first paragraphs): page | full text
   - Schema values filled from the site: field | value | where it came from
   - Draft emails and backlink targets: full text
   Close with: "Reply with any line you want changed or reverted and I'll apply it."
5. **Facts I need from you**: one batch (address, prices, author names, images). Say what turns green when you get them.
6. **Your to-do**: only sections 9 and 10 and the cannot-do list. Numbered, one click per line.
7. **Speed**: before/after numbers.

NOT YET only if a 🔴 is outside your reach. Everything else green means READY.

Confidence: High / Med / Low, with a half-line reason only when Low.