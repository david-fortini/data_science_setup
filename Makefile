.PHONY: setup test lint run

#################################################################################
# GLOBALS                                                                       #
#################################################################################


PROJECT_DIR := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
PROFILE = default
PROJECT_NAME = myprojectName
PYTHON_INTERPRETER = python3

# Alias python paths
PYTHON_ENV := pipenv run python
PYTEST := pipenv run pytest
LINTER := pipenv run flake8
#################################################################################
# COMMANDS                                                                      #
#################################################################################

# Makefile chains the operations so setup -> lint -> test -> run

setup: 
	$(PYTHON_INTERPRETER) -m pip install  --upgrade pip
	$(PYTHON_INTERPRETER) -m pip install  pipenv
	pipenv install
	
lint: setup
	$(LINTER) src
	$(LINTER) test

test: lint
	$(PYTEST) test



run: test
	$(PYTHON_ENV) src/main.py