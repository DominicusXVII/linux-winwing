MDIR ?= /lib/modules/$(shell uname -r)
KDIR ?= $(MDIR)/build

SRC := $(PWD)

default:
	$(MAKE) -C $(KDIR) M=$(SRC) modules

install:
	$(MAKE) -C $(KDIR) M=$(SRC) modules_install
	sudo depmod -a

clean:
	$(MAKE) -C $(KDIR) M=$(SRC) clean