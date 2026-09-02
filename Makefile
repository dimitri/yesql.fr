PORT ?= 1313
BASEURL ?= https://yesql.fr/

.PHONY: help serve serve-pub build check clean new-campaign

help:  ## Show this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) \
	  | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-16s\033[0m %s\n", $$1, $$2}'

serve: ## Run the dev server on http://localhost:$(PORT)/fr/
	hugo server --port $(PORT) --buildDrafts --buildFuture --disableFastRender

serve-pub: ## Run the dev server as the public site would be (no drafts)
	hugo server --port $(PORT) --disableFastRender

build: ## Build the site into docs/
	hugo --minify --gc --cleanDestinationDir --baseURL "$(BASEURL)"

check: ## Build to memory and fail on any warning (what CI does)
	hugo --renderToMemory --logLevel warn --printPathWarnings

clean: ## Remove generated output
	rm -rf docs resources/_gen .hugo_build.lock

new-campaign: ## Scaffold a campaign: make new-campaign SLUG=oracle-pgloader-v4
ifndef SLUG
	$(error SLUG is required, e.g. make new-campaign SLUG=oracle-pgloader-v4)
endif
	@test ! -e data/campaigns/$(SLUG).toml || \
	  { echo "data/campaigns/$(SLUG).toml already exists"; exit 1; }
	# Directory form, with no trailing /index.md: that is what makes Hugo
	# pick up the archetypes/campaigns/ directory archetype and scaffold a
	# page bundle rather than falling back to archetypes/default.md.
	hugo new content content/fr/campaigns/$(SLUG)
	hugo new content content/en/campaigns/$(SLUG)
	cp archetypes/campaign.data.toml data/campaigns/$(SLUG).toml
	@echo
	@echo "Created three files. Now:"
	@echo "  1. data/campaigns/$(SLUG).toml   — target, threshold, dates, project. All figures."
	@echo "  2. content/fr/campaigns/$(SLUG)/index.md — French prose, no figures."
	@echo "  3. content/en/campaigns/$(SLUG)/index.md — English prose, same tier_labels keys."
	@echo "  4. Drop draft = true in both content files when ready."
