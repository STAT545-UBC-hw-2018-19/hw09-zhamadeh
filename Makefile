all: report.html

clean:
	rm -f words.txt histogram.tsv histogram.png report.md report.html letter_count.tsv letter_count.png new_report.md new_report.html

report.html: report.rmd histogram.tsv histogram.png 
	Rscript -e 'rmarkdown::render("$<")'

new_report.html: new_report.rmd letter_count.tsv letter_count.png 
	Rscript -e 'rmarkdown::render("$<")'

histogram.png: histogram.tsv
	Rscript -e '.libPaths("/Library/Frameworks/R.framework/Versions/3.5/Resources/library");library(ggplot2); qplot(Length, Freq, data=read.delim("$<")); ggsave("$@")'
	
letter_count.png: letter_count.tsv
	Rscript -e '.libPaths("/Library/Frameworks/R.framework/Versions/3.5/Resources/library");library(ggplot2); ggplot(read.delim("$<")) + geom_bar(stat= "identity", aes(x = Var1, y= Freq)); ggsave("$@")'
	
histogram.tsv: histogram.r words.txt
	Rscript $<

letter_count.tsv: letter_count.r words.txt 
	Rscript $<

words.txt: /usr/share/dict/words
	cp $< $@

#words.txt:
#	Rscript -e 'download.file("http://svnweb.freebsd.org/base/head/share/dict/web2?view=co", destfile = "words.txt", quiet = TRUE)'
