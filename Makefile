VERSION ?= 1.11.1

TARGETS = static/assets/css/baguetteBox.min.css static/assets/js/baguetteBox.min.js

all: $(TARGETS)

static/assets/%: Makefile
	mkdir -p $(dir $@)
	curl -fsL \
	    https://raw.githubusercontent.com/feimosi/baguetteBox.js/v$(VERSION)/dist/$(notdir $@) \
	    > $@

.PHONY: clean
clean:
	rm -f $(TARGETS)
