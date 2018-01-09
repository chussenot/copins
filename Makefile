.PHONY: help

FUNCTION_NAME:=preview

export FUNCTION_NAME 

help: ## Show this help.
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

invoke: ## Invoke a lambda function
	@aws lambda invoke --function-name $(FUNCTION_NAME) tmp/output.txt

env:
	@env
