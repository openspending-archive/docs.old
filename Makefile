# Makefile for Sphinx documentation
#

# You can set these variables from the command line.
SPHINXOPTS    =
SPHINXBUILD   = sphinx-build
PAPER         =
BUILDDIR      = ../openspending/ui/templates/help

# Internal variables.
ALLSPHINXOPTS   = -d $(BUILDDIR)/doctrees $(SPHINXOPTS) .

.PHONY: help clean html static pot

help:
	@echo "Please use \`make <target>' where <target> is one of"
	@echo "  html       to make standalone HTML files"

clean:
	-rm -rf $(BUILDDIR)/*

html:
	$(SPHINXBUILD) -b html $(ALLSPHINXOPTS) $(BUILDDIR)
	@echo
	@echo "Build finished. The HTML pages are in $(BUILDDIR)."

static:
	$(SPHINXBUILD) -b html -D templates_path=templates_standalone $(ALLSPHINXOPTS) standalone
	@echo
	@echo "Build finished. The HTML pages are in $(BUILDDIR)."

pot:
	$(SPHINXBUILD) -b gettext . pots
