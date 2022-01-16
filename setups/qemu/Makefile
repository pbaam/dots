include config.mk

FILES = $(DISK) $(BIOS) $(ISO)

all: | $(FILES)
all: run

clean: $(UNTRACK-PREFIX)$(FILES)
	rm $<

run:
	qemu-system-x86_64 -m $(DISK-SPACE) -cdrom $(ISO) -drive file=$(DISK),format=raw -bios $(BIOS)

$(DISK):
	qemu-img create -f raw $@ $(DISK-SPACE)
$(ISO):
	# https://www.gentoo.org/downloads/
	wget $(ISO-URL) -O $@
$(BIOS):
	wget $(BIOS-URL) -O $@
