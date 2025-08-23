.PHONY: help dev build serve clean new-post new-page deploy check

help: ## Show this help message
	@echo 'Usage: make [target]'
	@echo ''
	@echo 'Targets:'
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "  %-15s %s\n", $$1, $$2}' $(MAKEFILE_LIST)

dev: ## Start development server with drafts
	hugo server --buildDrafts --buildFuture --disableFastRender

serve: ## Start development server
	hugo server --buildDrafts --buildFuture --navigateToChanged

serve-prod: ## Start production server
	hugo server --environment production --disableFastRender

build: ## Build the site for production
	hugo --gc --minify

build-preview: ## Build the site including drafts and future posts
	hugo --gc --minify --buildDrafts --buildFuture

clean: ## Remove generated files
	rm -rf public resources

new-post: ## Create a new blog post (usage: make new-post TITLE="post-title")
	hugo new content posts/$(TITLE).md

new-page: ## Create a new page (usage: make new-page TITLE="page-title")
	hugo new content $(TITLE).md

check: ## Check site for issues
	hugo --gc --minify --printMemoryUsage --printPathWarnings

install: ## Install dependencies
	@echo "No dependencies to install for Hugo"

test: ## Run tests
	@echo "No tests configured yet"

deploy: build ## Build and prepare for deployment
	@echo "Site built successfully. Push to GitHub to deploy via Actions."