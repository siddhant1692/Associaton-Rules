## Association Rules

########## Book Data Set #########
library(arules)
book<-read.csv('D:\\Data Science\\Excelr\\Assignments\\Assignment\\Association Rules\\book.csv')
inspect(book[1:2000])
class(book)
# itemFrequencyPlot can be applicable only for transaction data 
# count of each item from all the transactions 
itemFrequencyPlot(book,topN=20)

book_rules<-apriori(book,parameter = list(support = 0.5,confidence = 0.02,minlen=4))
library(arulesViz)
plot(book_rules,method = "scatterplot")
plot(book_rules,method = "grouped")
plot(book_rules,method = "graph")
plot(book_rules,method = "mosaic")
inspect(book_rules[1:5])
rules <- sort(book_rules,by="lift")
inspect(rules[1:4])

## With different support, confidence and minimum length ##

book_rules1<-apriori(book,parameter = list(support = 0.8,confidence = 0.01,minlen=4))
plot(book_rules1,method = "scatterplot")
plot(book_rules1,method = "grouped")
plot(book_rules1,method = "graph")
plot(book_rules1,method = "mosaic")
inspect(book_rules1[1:5])
rules1 <- sort(book_rules1,by="lift")
inspect(rules[1:4])
