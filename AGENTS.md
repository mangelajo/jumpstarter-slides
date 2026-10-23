# Jumpstarter Slides — Agent Instructions

This repo contains [Slidev](https://sli.dev/) presentation decks for the [Jumpstarter](https://jumpstarter.dev) project.

## Repo structure

```
common/
  slides/         Reusable slide modules imported via Slidev `src:` directives
  images/         Shared images (logos, diagrams, board photos)
  setup/          Shared Slidev setup (e.g. Mermaid icon packs)
community/        Generic community presentation (no partner branding)
redhat-hyundai/   Co-branded Red Hat + Hyundai Motor Group presentation
```

Each presentation directory contains:
- `slides.md` — the deck entry point with frontmatter config and a custom title slide, followed by `src:` imports from `common/slides/`
- `public/images/` — symlinked to `common/images/` for shared assets, plus any deck-specific images (e.g., partner logos)
- `setup/mermaid.ts` — symlinked to `common/setup/mermaid.ts` (Mermaid Iconify packs; Slidev loads `setup/` from the deck directory)

## How Slidev works

- Slides are written in Markdown with YAML frontmatter per slide
- Slides are separated by `---` on its own line
- The `src:` frontmatter directive imports all slides from another `.md` file
- Images in `public/` are served at `/` (e.g., `public/images/foo.png` → `/images/foo.png`)
- Vue components, UnoCSS classes, and Mermaid diagrams work inline in the markdown
- The dev server (`make dev-community`) hot-reloads on any `.md` file change

## Common tasks

### Creating a new presentation deck

1. Create a directory: `mkdir my-event`
2. Create the public images dir with a symlink to shared images:
   ```bash
   mkdir -p my-event/public
   ln -s ../../common/images my-event/public/images
   ```
3. Symlink shared Mermaid setup (required for icons in Mermaid diagrams):
   ```bash
   mkdir -p my-event/setup
   ln -s ../../common/setup/mermaid.ts my-event/setup/mermaid.ts
   ```
4. If the deck needs its own images (partner logos, event branding), put them directly in `my-event/public/images/` alongside the symlink. Use a subdirectory or direct files — avoid naming conflicts with `common/images/`.
5. Add a `my-event/vite.config.ts` disabling strict fs mode (required — slidev ≥ 52.17.2's import guard resolves symlinked `public/` images via realpath and rejects them; copy the one from `community/`):
   ```ts
   import { defineConfig } from 'vite'
   export default defineConfig({ server: { fs: { strict: false } } })
   ```
6. Create `my-event/slides.md` starting with frontmatter, then a custom title slide, then `src:` imports for whichever common modules are needed:
   ```markdown
   ---
   theme: default
   title: Jumpstarter at MyEvent
   transition: slide-left
   mdc: true
   ---

   <!-- custom title slide content here -->

   ---
   src: ../common/slides/challenges.md
   ---

   ---
   src: ../common/slides/introducing.md
   ---
   ```
7. Add Makefile targets following the existing pattern (copy a `dev-*` / `build-*` / `export-*` triplet)
8. Add corresponding npm scripts in `package.json`
9. The available common slide modules are:
   - `challenges.md` — "Testing is Hard", key challenges grid, "Solved in Software"
   - `what-is-hil.md` — HiL definition, HiL landscape challenges vs solutions
   - `introducing.md` — "Introducing Jumpstarter", what it is, how it works (3 pillars)
   - `use-cases.md` — local vs distributed diagrams, example use case cards
   - `architecture.md` — architecture diagram, driver call types, benefits
   - `demo.md` — demo title slide, Jumpstarter shell walkthrough
   - `code-examples.md` — Python tests, pytest example, exporter config
   - `community.md` — community links, thank you slide

### Adding a new common slide module

1. Create `common/slides/my-topic.md`
2. Start with a `---` frontmatter block (layout, class, etc.) — this is required for the first slide
3. Separate multiple slides within the file with `---`
4. Reference images as `/images/filename.png` (served from the deck's `public/images/` which symlinks to `common/images/`)
5. Import it in any deck's `slides.md` with:
   ```markdown
   ---
   src: ../common/slides/my-topic.md
   ---
   ```

### Adding or replacing images

- **Shared images**: put them in `common/images/` — they'll be available in all decks
- **Deck-specific images**: put them in `<deck>/public/images/` — for the `redhat-hyundai` deck, partner logos live here alongside a `common` symlink

### Modifying a title slide

Each deck's title slide is the first slide in its `slides.md` (everything between the first frontmatter and the first `src:` import). Modify only that deck's `slides.md`. The title slide typically uses absolute-positioned divs for layout — refer to the existing `community/slides.md` or `redhat-hyundai/slides.md` as templates.

### Image paths in common slides vs deck-specific slides

- In `common/slides/*.md`, always use `/images/filename.png` — this resolves through each deck's `public/images` symlink
- In `redhat-hyundai/slides.md`, deck-specific images use `/images/redhat-logo.png` (directly in its own `public/images/`), while shared images use `/images/common/jumpstarter-logo.svg` (through the `common` symlink inside its `public/images/`)

### Running and testing

```bash
make help                   # see all available targets
make dev-community          # start community deck with hot-reload
make dev-redhat-hyundai     # start redhat-hyundai deck with hot-reload
make build-community        # build static SPA
make export-community       # export to PDF
```

The dev server runs on http://localhost:3030 by default.

## Style conventions

- Background colors: light gray `#f0f0f0` for title slides, Jumpstarter yellow `#ffc107` for accent bands
- Use UnoCSS utility classes for layout (grid, flex, padding, etc.)
- Use `<v-clicks>` for incremental reveal of bullet points
- Use Mermaid code blocks for flow diagrams
- Code examples use standard fenced code blocks with language hints (`python`, `bash`, `yaml`)
- Avoid hardcoding absolute font sizes — use Tailwind/UnoCSS scale (`text-sm`, `text-lg`, `text-xl`, etc.)
