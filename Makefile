PROJECT_NAME := "pre-commit-hooks"

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

setup: ## Setup required things
	python3 -m pip install -r requirements-dev.txt
	pre-commit install

pre-commit-all: ## Run pre-commit on all files
	pre-commit run --all-files

pre-commit: ## Run pre-commit
	pre-commit run
