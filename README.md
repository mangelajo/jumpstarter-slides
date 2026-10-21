# Jumpstarter Slides

Presentation decks for [Jumpstarter](https://jumpstarter.dev), built with [Slidev](https://sli.dev/).

## Structure

```
common/
  slides/         Reusable slide modules (challenges, architecture, demo, etc.)
  images/         Shared images and logos
community/        Generic community presentation
  slides.md       Deck entry point — imports from common/slides/
  public/images   -> symlink to common/images
redhat-hyundai/   Co-branded Red Hat + Hyundai presentation
  slides.md       Deck entry point — branded title, imports common slides
  public/images/  Partner logos + symlink to common/images
```

## Adding a new presentation

1. Create a new directory: `mkdir my-event`
2. Add a `public/` dir and symlink shared images: `mkdir -p my-event/public && ln -s ../../common/images my-event/public/images`
3. Create `my-event/slides.md` with your custom title slide, then import common slides with `src:` directives
4. Add any event-specific images to `my-event/public/images/`
5. Add Makefile targets and `package.json` scripts for the new deck

## Usage

```bash
make help                  # show all targets
make install               # install dependencies
make dev-community         # start community deck with hot-reload
make dev-redhat-hyundai    # start Red Hat + Hyundai deck with hot-reload
make build-community       # build community deck as static SPA
make export-community      # export community deck to PDF
```

Editing any `.md` file while the dev server is running will hot-reload in the browser.

## Requirements

- Node.js >= 18
