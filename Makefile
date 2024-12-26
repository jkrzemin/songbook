clean:
	rm -v list.txt book.pdf

filelist:
	find songs -name "*.cho" | sort > list.txt
	@echo "Song list generated"
	@cat list.txt

generate: filelist
	chordpro --filelist list.txt --config config.json --output book.pdf --verbose