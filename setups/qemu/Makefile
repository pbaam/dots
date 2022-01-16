include config.mk

FILES = $(DISK) $(BIOS) $(ISO)

all: | $(FILES)
all: run

clean: $(UNTRACK-PREFIX)$(FILES)
	rm $<

run:
	qemu-system-x86_64 -m $(RAM-SIZE) -cdrom $(ISO) -drive file=$(DISK),format=raw -bios $(BIOS)

$(DISK):
	qemu-img create -f raw $@ $(DISK-SIZE)
$(ISO):
	# https://www.gentoo.org/downloads/
	wget $(ISO-URL) -O $@
$(BIOS):
	wget $(BIOS-URL) -O $@
