YMLS := $(wildcard *.yml)
TMPL := template.html

all: index.html
gh:
	git add -A; git commit -m "`date `- `uname`"; git push;

index.html: $(YMLS) $(TMPL)
index.html: index.md index2.md part3.md
	pandoc \
		--highlight-style pygments \
		--template template.html \
		--variable=key1:val1,key2:val2 \
		part1.yml \
		part2.yml part3.md \
		-f markdown \
		index2.md \
		index.md \
		part1.yml \
		-o $@
		# -V key1=val1,key2=val2 \

clean:
	rm index.html
