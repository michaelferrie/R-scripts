# Create R WordCloud
install.packages("tm")  # for text mining
install.packages("SnowballC") # for text stemming
install.packages("wordcloud") # word-cloud generator 
install.packages("wordcloud2") # word-cloud generator
install.packages("RColorBrewer") # color palettes
# Load
library("tm")
library("SnowballC")
library("wordcloud")
library("wordcloud2")
library("RColorBrewer")
text <- readLines("/home/michael/code/lotr.txt")
docs <- Corpus(VectorSource(text))
# Convert the text to lower case
docs <- tm_map(docs, content_transformer(tolower))
# Remove numbers
docs <- tm_map(docs, removeNumbers)
# Remove english common stopwords
docs <- tm_map(docs, removeWords, stopwords("english"))
# specify your to remove stopwords as a character vector
docs <- tm_map(docs, removeWords, c("the","wla", "this", "said", "like", "now", "went","come")) 
# Remove punctuation
docs <- tm_map(docs, removePunctuation)
# Eliminate extra white spaces
docs <- tm_map(docs, stripWhitespace)
# Text stemming
#docs <- tm_map(docs, stemDocument)

dtm <- TermDocumentMatrix(docs)
m <- as.matrix(dtm)
v <- sort(rowSums(m),decreasing=TRUE)
d <- data.frame(word = names(v),freq=v)

head(d, 10)
set.seed(1234)
wordcloud(words = d$word, freq = d$freq, min.freq = 1,
          max.words=200, random.order=FALSE, rot.per=0.35, 
          colors=brewer.pal(8, "Dark2"))
#Fancy wordcloud v2
wordcloud2(d, minRotation = -pi/6, maxRotation = -pi/6, minSize = 14,
           rotateRatio = 5)
#findFreqTerms(dtm, lowfreq = 4)
barplot(d[1:10,]$freq, las = 2, names.arg = d[1:10,]$word,
        col ="lightgreen", main ="Most frequent words",
        ylab = "Word frequencies")
wordcloud2(data=d, size=1.6)
wordcloud2(d, size=1.6, color='random-dark')
wordcloud2(d, size=1.6, color='random-light', backgroundColor="black")
wordcloud2(d, size = 0.7, shape ="circle")
