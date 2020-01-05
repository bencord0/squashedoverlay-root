LIBDIR ?= /usr/lib

all:

install: 81squashedoverlay-root/*
	mkdir -p $(DESTDIR)$(LIBDIR)/dracut/modules.d
	install -t $(DESTDIR)$(LIBDIR)/dracut/modules.d/81squashedoverlay-root $^
