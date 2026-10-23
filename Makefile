.DEFAULT_GOAL := help
.PHONY: help install clean sync-partner-images dev-community dev-redhat-hyundai dev-roadmap-2026-q4 dev-deployment build-community build-redhat-hyundai build-roadmap-2026-q4 build-deployment build-pages export-community export-redhat-hyundai export-roadmap-2026-q4 export-deployment

SLIDEV := ./node_modules/.bin/slidev
CLOUDFLARE ?= false
DECKS := community deployment roadmap-2026-q4 redhat-hyundai
PAGES_DIR := site
# Project Pages base, e.g. /jumpstarter-slides/ — must end with /
BASE ?= /

help: ## Show this help
	@grep -E '^[a-zA-Z0-9_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-24s\033[0m %s\n", $$1, $$2}'

install: node_modules ## Install dependencies

node_modules: package.json
	npm install

dev-community: node_modules ## Start community deck with hot-reload
ifeq ($(CLOUDFLARE),true)
	$(SLIDEV) community/slides.md & cloudflared tunnel --url http://localhost:3030
else
	$(SLIDEV) community/slides.md --open
endif

dev-redhat-hyundai: node_modules ## Start Red Hat + Hyundai deck with hot-reload
ifeq ($(CLOUDFLARE),true)
	$(SLIDEV) redhat-hyundai/slides.md & cloudflared tunnel --url http://localhost:3030
else
	$(SLIDEV) redhat-hyundai/slides.md --open
endif

dev-roadmap-2026-q4: node_modules ## Start roadmap 2026 Q4 deck with hot-reload
ifeq ($(CLOUDFLARE),true)
	$(SLIDEV) roadmap-2026-q4/slides.md & cloudflared tunnel --url http://localhost:3030
else
	$(SLIDEV) roadmap-2026-q4/slides.md --open
endif

dev-deployment: node_modules ## Start deployment deck with hot-reload
ifeq ($(CLOUDFLARE),true)
	$(SLIDEV) deployment/slides.md & cloudflared tunnel --url http://localhost:3030
else
	$(SLIDEV) deployment/slides.md --open
endif

build-community: node_modules ## Build community deck to dist/
	$(SLIDEV) build community/slides.md

build-redhat-hyundai: node_modules ## Build Red Hat + Hyundai deck to dist/
	$(SLIDEV) build redhat-hyundai/slides.md

build-roadmap-2026-q4: node_modules ## Build roadmap 2026 Q4 deck to dist/
	$(SLIDEV) build roadmap-2026-q4/slides.md

build-deployment: node_modules ## Build deployment deck to dist/
	$(SLIDEV) build deployment/slides.md

# Partner decks keep logos in public/images/; symlink shared assets so /images/foo works.
sync-partner-images:
	@for f in common/images/*; do \
		base=$$(basename "$$f"); \
		dest=redhat-hyundai/public/images/$$base; \
		if [ ! -e "$$dest" ]; then ln -s "../../../common/images/$$base" "$$dest"; fi; \
	done

build-pages: node_modules sync-partner-images ## Build all decks into site/ for GitHub Pages
	@case "$(BASE)" in */) ;; *) echo "BASE must end with / (got: $(BASE))" >&2; exit 1 ;; esac
	rm -rf $(PAGES_DIR)
	mkdir -p $(PAGES_DIR)/images
	cp pages/index.html $(PAGES_DIR)/index.html
	cp common/images/jumpstarter-logo.svg common/images/jumpstarter-icon.png $(PAGES_DIR)/images/
	@for deck in $(DECKS); do \
		out="$(CURDIR)/$(PAGES_DIR)/$$deck"; \
		echo "Building $$deck → $$out (base $(BASE)$$deck/)"; \
		$(SLIDEV) build $$deck/slides.md \
			--out "$$out" \
			--base $(BASE)$$deck/ \
			--router-mode hash; \
	done

export-community: node_modules ## Export community deck to PDF
	$(SLIDEV) export community/slides.md

export-redhat-hyundai: node_modules ## Export Red Hat + Hyundai deck to PDF
	$(SLIDEV) export redhat-hyundai/slides.md

export-roadmap-2026-q4: node_modules ## Export roadmap 2026 Q4 deck to PDF
	$(SLIDEV) export roadmap-2026-q4/slides.md

export-deployment: node_modules ## Export deployment deck to PDF
	$(SLIDEV) export deployment/slides.md

clean: ## Remove dist/, site/, and node_modules/
	rm -rf dist site node_modules community/dist redhat-hyundai/dist roadmap-2026-q4/dist deployment/dist
