## Association Rules

########## Groceries Data Set #########
library(arules)
groceries<-read.transactions('D:\\Data Science\\Excelr\\Assignments\\Assignment\\Association Rules\\groceries.csv',format="basket")
inspect(groceries[1:10])
class(groceries)
# itemFrequencyPlot can be applicable only for transaction data 
# count of each item from all the transactions 
itemFrequencyPlot(groceries,topN=20)

groceries_rules<-apriori(groceries,parameter = list(support = 0.002,confidence = 0.05,minlen=3))
library(arulesViz)
plot(groceries_rules,method = "scatterplot")
plot(groceries_rules,method = "grouped")
plot(groceries_rules,method = "graph")
plot(groceries_rules,method = "mosaic")
inspect(groceries_rules[1:5])
rules <- sort(groceries_rules,by="lift")
inspect(rules[1:4])

## With different support, confidence and minimum length ##

groceries_rules1<-apriori(groceries,parameter = list(support = 0.001,confidence = 0.06,minlen=4))
plot(groceries_rules1,method = "scatterplot")
plot(groceries_rules1,method = "grouped")
plot(groceries_rules1,method = "graph")
plot(groceries_rules1,method = "mosaic")
inspect(groceries_rules1[1:5])
rules1 <- sort(groceries_rules1,by="lift")
inspect(rules[1:4])

