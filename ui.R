library(shiny)
library(datasets)
require(graphics)
shinyUI(fluidPage(
  headerPanel(img(src = "C:/Users/ITSUPPORT/Desktop/R/M9/Project/logo.jpg"),
              h2("Developing Data Product of The MTCARS") ),
  
  # description and input
  sidebarPanel(
    h3('INPUT SCREEN'),
    p('Here to presented the mtcars dataset.'),
    p('Please select the predictor variable as outcome:'),
    selectInput('x', label='Predictor', selected='cyl', choices=names(mtcars)),
    p('Color customization option:'),
    selectInput('color', label='Color', choices=palette()),
    h3('Documentation'),
    p("The project will presenting the 'mtcars' dataset to plot the",
      "regression model using two variables of this dataset:",
      "one as predictor, what we have to choose, and the",
      "other is 'mpg' as the outcome.")),

  
  # plot and output
  mainPanel(
    div(h2("DEVELOPING DATA PRODUCTS 'MTCARS'", style="color:#ff6600;margin:-65px 0px 10px 20px;")),
    h4('Summary Of Selected Attribute'),
    h4(verbatimTextOutput("summary")),
    h4(textOutput('text')),
    plotOutput('myPlot'))
  
))