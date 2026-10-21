.DEFAULT_GOAL := help
.PHONY: dev build export clean install help

help: ## Show this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-12s\033[0m %s\n", $$1, $$2}'

install: node_modules ## Install dependencies

node_modules: package.json
	npm install

dev: node_modules ## Start dev server with hot-reload
	npx slidev --open

build: node_modules ## Build static SPA to dist/
	npx slidev build

export: node_modules ## Export slides to PDF
	npx slidev export

clean: ## Remove dist/ and node_modules/
	rm -rf dist node_modules
