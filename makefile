# GNU stow could be used but it isn't.
# One reason is that it's unclear how to create links which go through $(HOME)/my with it.

.DEFAULT_GOAL := link
SHELL := /bin/bash

# Defines $(files) and targets for them.
include data.mk

$(files):
	ln --symbolic $^ $@

.PHONY: link
link: dirs $(files)

.PHONY: dirs
dirs:
	for dir in $(dir $(files)); do mkdir -p $$dir; done

.PHONY: unlink
unlink:
	rm -f $(files)
