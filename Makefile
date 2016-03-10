TITLE ?= untitled
#
NOP:=
SPACE:=$(NOP) $(NOP)
TEMPLATE := _template
POST := _posts
POST_TEMPLATE := $(TEMPLATE)/head
TIMESTAMP := $(shell date +%Y-%m-%d)
FILENAME:=$(POST)/$(TIMESTAMP)-$(subst $(SPACE),_,$(TITLE)).md

.PHONY: build serve update clean

build:
	bundle exec jekyll build --safe
 
post: | $(TEMPLATE) $(POST)
	cp $(POST_TEMPLATE) $(FILENAME)
	sed -i '' -e 's/__title__/$(TITLE)/g' $(FILENAME)
	sed -i '' -e 's/__date__/$(TIMESTAMP)/g' $(FILENAME)

serve:
	bundle exec jekyll serve

update:
	bundle update
	
clean:
	-rm -rf _site

