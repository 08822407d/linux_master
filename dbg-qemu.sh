#!/usr/bin/env bash

qemu-system-x86_64 -s -S -m 8192 -smp threads=1,cores=1,sockets=1 -name UEFI -kernel ./arch/x86_64/boot/bzImage -initrd ./initrd.img -hda ~/vmware/myos2test/myos2test-flat.vmdk -nographic -append "nokaslr console=ttyS0" -net none