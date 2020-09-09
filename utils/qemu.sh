#!/bin/bash
create () {
	qemu-img create -f qcow2 $1 $2
}

bootISO () {
	qemu-system-x86_64 -m $1 -boot d -enable-kvm -smp $2 -net nic -net user -hda $3 -cdrom $4
}

boot() {
	qemu-system-x86_64 -m $1 -boot d -enable-kvm -smp $2 -net nic -net user -hda $3
}

case $# in
	3) create $2 $3;;
	4) boot $2 $3 $4;;
	5) bootISO $2 $3 $4 $5;;
	*) echo -e "Please choose whether to create, boot an ISO, or boot an image.\n
		For create, use 2 extra parameters\n
		1. Image name (e.g. image.img)\n
		2. Size of the image (e.g. 10G)\n\n

		For boot ISO, use 4 extra parameters\n
		1. Amount of RAM (e.g. 1024)\n
		2. Amount of CPU cores (e.g. 3)\n
		3. Image to boot with (e.g. image.img)\n
		4. ISO to boot with (e.g. iso.iso)\n\n

		For boot image, use 3 extra parameters\n
		1. Amount of RAM (e.g. 1024)\n
		2. Amount of CPU cores (e.g. 3)\n
		3. Image to boot with (e.g. image.img)";;
esac
