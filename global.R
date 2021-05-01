if (!require('shiny')) install.packages("shiny")
library(shiny)
library(readr)  # for read_csv
led<-read.csv("https://raw.githubusercontent.com/neonguyen2016/Computational-Statistics/main/Life%20Expectancy%20Data.csv")
#prep and cleaning of data set
lifexp<-na.omit(led)
xpnew<-as.data.frame(data.matrix(lifexp))
developing <- as.numeric(as.character(factor(lifexp$Status,levels=c('Developing', 'Developed'), labels=c(0,1))))
xpnew$Status<-developing
