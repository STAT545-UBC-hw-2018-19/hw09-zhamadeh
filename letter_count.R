library(stringr)
words <- readLines("words.txt")

letter_count <- table(factor(unlist(strsplit(words, ""), use.names=FALSE), levels=letters))

write.table(letter_count, "letter_count.tsv",
			sep = "\t", row.names = FALSE, quote = FALSE)

t <- read.delim("letter_count.tsv")

ggplot(t) + geom_bar(stat= "identity", aes(x = Var1, y= Freq)) +
	labs(x="Letter", y="Frequency")

