NAME = corebook.txt
PDF = corebook.pdf

all: $(PDF)

$(PDF): $(NAME)
	a2x -f pdf --fop $(NAME)

$(NAME): heading $(wildcard part*/ch*/*)
	cat heading part*/ch*/* > $(NAME)

clean:
	rm -f $(NAME) $(PDF) *.xml
