setup: ## Setup requirements for running other scripts
	pip install -r scripts/requirements-test.txt

dummy: ## Perform a dummy sample action
	python scripts/run_dummy_action.py

validate: setup ## Validate data
	goodtables datapackage datapackage.json

%:
	@true

.PHONY: help

help:
	@echo 'Usage: make <command>'
	@echo
	@echo 'where <command> is one of the following:'
	@echo
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

.DEFAULT_GOAL := help
