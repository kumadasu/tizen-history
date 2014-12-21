# variables
DOT     = dot
FLAGS   = -Tpdf
DOTFILE = tizen-history.dot
OUTFILE = tizen-history.pdf

READER1  = xpdf
READER2  = evince
READER3  = acroread
READER   = $(READER2)


# targets
.PHONY: all clean read

all:: $(OUTFILE)

$(OUTFILE): $(DOTFILE)
	$(DOT) $(FLAGS) $(DOTFILE) -o $(OUTFILE)

clean:
	rm -f $(OUTFILE)

show: $(OUTFILE)
	$(READER) $(OUTFILE)


# ### EOF ###
