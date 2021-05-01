shinyUI(fluidPage(
  headerPanel("Life Expectancy Regression"), 
  mainPanel(
    p("The following linear regression models represent the life expectancy in years of many of the world's countries. Any graph with a green line represents a predictor that has a positive regression coefficient, implying that the life expectancy will rise under the condition. Conversely, red lines represent predictors that cause a decrease in life expectancy."),
    p("There is, however, an outlier linear regression model of under-five deaths. This is likely due to the small amount of countries with large values. The graphical representation of the model makes it clear that the countries on the left side do not consider the under-five death value highly, while the countries towards the right embody a negative correlation."),
    p("The predictors with the strongest positive correlations and most stable relationships were the immunization predictors, including polio and diphtheria. They were joined by BMI, Schooling, Development Status, and GDP, which is indicative of global political conditions in countries less fortunate."),
    plotOutput("am"),
    plotOutput("status"),
    plotOutput("infant"),
    plotOutput("alcohol"),
    plotOutput("bmi"),
    plotOutput("under5"),
    plotOutput("polio"),
    plotOutput("diphtheria"),
    plotOutput("GDP"),
    plotOutput("population"),
    plotOutput("schooling")
    
  )))