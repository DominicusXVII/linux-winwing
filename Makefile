MDIR ?= /lib/modules/$(shell uname -r)
KDIR ?= $(MDIR)/build

SRC := $(PWD)

default:
	$(MAKE) -C $(KDIR) M=$(SRC) modules

install:
	sudo cp *.ko $(MDIR)/kernel/drivers/hid
	sudo depmod -a

clean:
	$(MAKE) -C $(KDIR) M=$(SRC) clean