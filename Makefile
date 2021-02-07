obj-m = cp210x.o
SRCDIR = $(PWD)
# try this instead if you don't have PWD defined
SRCDIR = $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
# Armbian Kernel Directory
#KDIR = /usr/src/linux-headers-5.9.14-sunxi64/
KDIR = /usr/src/linux-headers-$(shell uname -r)/
all:
	$(MAKE) -C $(KDIR) M=$(SRCDIR) modules
clean:
	$(MAKE) -C $(KDIR) M=$(SRCDIR) clean
