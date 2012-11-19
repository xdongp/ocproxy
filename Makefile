SRCDIR := contrib/ports/unix/proj/ocproxy

PREFIX := /usr/local
BINDIR := $(PREFIX)/bin

.PHONY: all clean
all clean:
	$(MAKE) -C $(SRCDIR) $@

.PHONY: install
install: all
	mkdir -p $(DESTDIR)/$(BINDIR)
	install -m 0755 $(SRCDIR)/ocproxy $(DESTDIR)/$(BINDIR)
