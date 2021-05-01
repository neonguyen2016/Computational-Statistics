if (!require('shiny')) install.packages("shiny")
library(shiny)
#prep and cleaning of data set
lifexp<-na.omit(Life_Expectancy_Data)
xpnew<-as.data.frame(data.matrix(lifexp))
developing <- as.numeric(as.character(factor(lifexp$Status,levels=c('Developing', 'Developed'), labels=c(0,1))))
xpnew$status<-developing
