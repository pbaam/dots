all: run | u-disk u-bios u-iso

run:
	qemu-system-x86_64 -m 1G -cdrom u-iso -drive file=u-disk,format=raw -bios u-bios

u-disk:
	qemu-img create -f raw u-disk 5G
u-iso:
	# https://www.gentoo.org/downloads/
	wget "https://bouncer.gentoo.org/fetch/root/all/releases/amd64/autobuilds/20220102T170545Z/install-amd64-minimal-20220102T170545Z.iso"
u-bios:
	wget https://github.com/clearlinux/common/raw/master/OVMF.fd
