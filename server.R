shinyServer(function(input, output) {
  
  am<-lm(xpnew$`Life.expectancy`~ xpnew$`Adult.Mortality`)
  output$am<-renderPlot({
    plot(xpnew$`Life.expectancy`~xpnew$`Adult.Mortality`, xlab="Adult Mortality (prob. of dying per 1000 adults)", ylab="Life Expectancy (years)")
    abline(am, col="red")
  })
  
  status<-lm(xpnew$`Life.expectancy`~ xpnew$`Status`)
  output$status<-renderPlot({
    plot(xpnew$`Life.expectancy`~xpnew$`Status`, xlab="Nation Development Status (1 = Developed)", ylab="Life Expectancy (years)")
    abline(status, col="green")
  })
  
  infant<-lm(xpnew$`Life.expectancy`~ xpnew$`infant.deaths`)
  output$infant<-renderPlot({
    plot(xpnew$`Life.expectancy`~xpnew$`infant.deaths`, xlab="Infant Deaths (per 1000 population)", ylab="Life Expectancy (years)")
    abline(infant, col="red")
  })
  
  alcohol<-lm(xpnew$`Life.expectancy`~ xpnew$`Alcohol`)
  output$alcohol<-renderPlot({
    plot(xpnew$`Life.expectancy`~xpnew$`Alcohol`, xlab="Liters of Pure Alcohol (per person 15+)", ylab="Life Expectancy (years)")
    abline(alcohol, col="green")
  })
  
  bmi<-lm(xpnew$`Life.expectancy`~ xpnew$`BMI`)
  output$bmi<-renderPlot({
    plot(xpnew$`Life.expectancy`~xpnew$`BMI`, xlab="Body-Mass Index", ylab="Life Expectancy (years)")
    abline(bmi, col="green")
  })
  
  under5<-lm(xpnew$`Life.expectancy`~ xpnew$`under.five.deaths`)
  output$under5<-renderPlot({
    plot(xpnew$`Life.expectancy`~xpnew$`under.five.deaths`, xlab="Deaths Under the Age of 5", ylab="Life Expectancy (years)")
    abline(bmi, col="green")
  })
  
  polio<-lm(xpnew$`Life.expectancy`~ xpnew$`Polio`)
  output$polio<-renderPlot({
    plot(xpnew$`Life.expectancy`~xpnew$`Polio`, xlab="Polio Immunization Rate", ylab="Life Expectancy (years)")
    abline(polio, col="green")
  })
  
  diphtheria<-lm(xpnew$`Life.expectancy`~ xpnew$`Diphtheria`)
  output$diphtheria<-renderPlot({
    plot(xpnew$`Life.expectancy`~xpnew$`Diphtheria`, xlab="Diphtheria Immunization Rate", ylab="Life Expectancy (years)")
    abline(diphtheria, col="green")
  })
  
  GDP<-lm(xpnew$`Life.expectancy`~ xpnew$`GDP`)
  output$GDP<-renderPlot({
    plot(xpnew$`Life.expectancy`~xpnew$`GDP`, xlab="National Gross Domestic Product", ylab="Life Expectancy (years)")
    abline(GDP, col="green")
  })
  
  population<-lm(xpnew$`Life.expectancy`~ xpnew$`Population`)
  output$population<-renderPlot({
    plot(xpnew$`Life.expectancy`~xpnew$`Population`, xlab="Population", ylab="Life Expectancy (years)")
    abline(population, col="red")
  })   
  
  schooling<-lm(xpnew$`Life.expectancy`~ xpnew$`Schooling`)
  output$schooling<-renderPlot({
    plot(xpnew$`Life.expectancy`~xpnew$`Schooling`, xlab="Average Years of Schooling", ylab="Life Expectancy (years)")
    abline(schooling, col="green")
  })
  
})
