.DEFAULT_GOAL := help
.PHONY: help install clean dev-community dev-redhat-hyundai build-community build-redhat-hyundai export-community export-redhat-hyundai

SLIDEV := ./node_modules/.bin/slidev

help: ## Show this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-24s\033[0m %s\n", $$1, $$2}'

install: node_modules ## Install dependencies

node_modules: package.json
	npm install

dev-community: node_modules ## Start community deck with hot-reload
	$(SLIDEV) community/slides.md --open

dev-redhat-hyundai: node_modules ## Start Red Hat + Hyundai deck with hot-reload
	$(SLIDEV) redhat-hyundai/slides.md --open

build-community: node_modules ## Build community deck to dist/
	$(SLIDEV) build community/slides.md

build-redhat-hyundai: node_modules ## Build Red Hat + Hyundai deck to dist/
	$(SLIDEV) build redhat-hyundai/slides.md

export-community: node_modules ## Export community deck to PDF
	$(SLIDEV) export community/slides.md

export-redhat-hyundai: node_modules ## Export Red Hat + Hyundai deck to PDF
	$(SLIDEV) export redhat-hyundai/slides.md

clean: ## Remove dist/ and node_modules/
	rm -rf dist node_modules
