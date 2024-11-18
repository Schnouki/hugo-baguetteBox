VERSION ?= 1.12.0

TARGETS = assets/baguetteBox/baguetteBox.min.css assets/baguetteBox/baguetteBox.min.js

all: $(TARGETS)

assets/%: Makefile
	mkdir -p $(dir $@)
	curl -fsL \
	    https://raw.githubusercontent.com/feimosi/baguetteBox.js/v$(VERSION)/dist/$(notdir $@) \
	    > $@

.PHONY: clean
clean:
	rm -f $(TARGETS)
