impress.html: impress.md impress-template.html
	pandoc --template impress-template.html \
	-V impress-url=impress.js \
	-s -t html5 --section-divs \
	-o $@ $< \
	--mathjax 
	open $@
