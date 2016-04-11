YMLS := $(wildcard *.yml)
TMPL := template.html

all: index.html
gh:
	git add -A; git commit -m "`date `- `uname` $(CMTMSG)"; git push;

index.html: $(YMLS) $(TMPL)
index.html: index.md
	pandoc \
		--highlight-style pygments \
		--template template.html \
		part1.yml part2.yml \
		-f markdown \
		$< \
		-o $@

clean:
	rm index.html
