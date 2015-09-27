
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
# 
# http://www.rstudio.com/shiny/
#

library(shiny)

# function



data(mtcars)
mtcars$cyl  <- factor(mtcars$cyl)
mtcars$vs   <- factor(mtcars$vs)
mtcars$gear <- factor(mtcars$gear)
mtcars$carb <- factor(mtcars$carb)
mtcars$am   <- factor(mtcars$am,labels=c('Automatic','Manual'))

model.5 <- lm(mpg ~ am + wt + hp, mtcars)

testcar <- mtcars[1,]


mpgpred <- function(hp,wt) { 
  testcar$hp =hp  
  testcar$wt =wt/1000  
  result<-predict(model.5, newdata=testcar)
  result
  }


shinyServer(function(input, output) {
   
  output$prediction<-renderPrint({mpgpred(input$hp, input$wt)})
    
    
  }
  
)
