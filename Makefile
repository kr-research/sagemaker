.ONESHELL:
%:
	@: > /dev/null 
-include ${ENV}.env
export
SHELL=/bin/bash
GOALS=help
.PHONY: @(GOALS)
target=$(word 1, $(MAKECMDGOALS))
action=$(word 2, $(MAKECMDGOALS))
$(GOALS) &:
	@:
	@ . ./scripts/printer.sh
	@ . ./scripts/$(target).sh && ${action} || true