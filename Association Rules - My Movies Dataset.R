## Association Rules

########## movies Data Set #########
library(arules)
movies<-read.transactions('D:\\Data Science\\Excelr\\Assignments\\Assignment\\Association Rules\\my_movies_r.csv',format="basket")
inspect(movies[1:10])
class(movies)
# itemFrequencyPlot can be applicable only for transaction data 
# count of each item from all the transactions 
itemFrequencyPlot(movies,topN=20)

movies_rules<-apriori(movies,parameter = list(support = 0.002,confidence = 0.05,minlen=3))
library(arulesViz)
plot(movies_rules,method = "scatterplot")
plot(movies_rules,method = "grouped")
plot(movies_rules,method = "graph")
plot(movies_rules,method = "mosaic")
inspect(movies_rules[1:5])
rules <- sort(movies_rules,by="lift")
inspect(rules[1:4])

## With different support, confidence and minimum length ##

movies_rules1<-apriori(movies,parameter = list(support = 0.003,confidence = 0.06,minlen=4))
plot(movies_rules1,method = "scatterplot")
plot(movies_rules1,method = "grouped")
plot(movies_rules1,method = "graph")
plot(movies_rules1,method = "mosaic")
inspect(movies_rules1[1:5])
rules1 <- sort(movies_rules1,by="lift")
inspect(rules[1:4])

