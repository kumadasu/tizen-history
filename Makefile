DOT		= dot
FLAGS	= -Tpdf
DOTFILE	= tizen-history.dot
OUTFILE	= tizen-history.pdf

all:	$(OUTFILE)

$(OUTFILE):	$(DOTFILE)
			$(DOT) $(FLAGS) $(DOTFILE) -o $(OUTFILE)

clean:
			rm -f $(OUTFILE)
