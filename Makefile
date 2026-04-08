TEX := $(shell find . -type f -name '*.tex' | sort)
PDF := $(TEX:.tex=.pdf)
AUX := $(TEX:.tex=.aux)
LOG := $(TEX:.tex=.log)
XDV := $(TEX:.tex=.xdv)

.PHONY: all clean

all: $(PDF)

%.pdf: %.tex
	tectonic $<

clean:
	rm -f $(PDF) $(AUX) $(LOG) $(XDV)
