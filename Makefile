GH_PAGES_SOURCES = docs
ghpages:
	git checkout gh-pages
	rm -rf _build _sources _static _modules
	git checkout master $(GH_PAGES_SOURCES)
	git reset HEAD
	make -f docs/Makefile html
	mv -fv _build/html/* ./
	rm -rf $(GH_PAGES_SOURCES) _build
	git add -A
	git commit -m "Generated gh-pages" && git push origin gh-pages ; git checkout master
