library(stringr)

words <- readLines("words.txt")

#create table using letters as levels and tallying the letter composition of each word using strsplit
letter_count <- table(factor(unlist(strsplit(words, ""), use.names=FALSE), levels=letters))

#converting the table to a TSV file
write.table(letter_count, "letter_count.tsv", 
			sep = "\t", row.names = FALSE, quote = FALSE)

