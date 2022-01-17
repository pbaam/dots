include config.mk

all: install
	echo $(LINK)

clean:
	rm 

install: | $(LINKS) $(BUILD-SCRIPTS)
	$(LINK) $<

$(LINKS): 
	$(MKLINK) $@

$(BUILD-SCRIPTS):
	mkdir $@
