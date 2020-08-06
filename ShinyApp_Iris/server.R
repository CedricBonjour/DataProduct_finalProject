

library(shiny)

library(caret)
library(rattle)
data("iris")


mdl = train(Species ~ ., data=iris, method="rpart", trControl = trainControl(method = "cv"))
flower = c( 5 , 3.3, 1.4 ,0.3 )
flower = as.data.frame.list(flower)
colnames(flower)  =c("Sepal.Length" , "Sepal.Width" ,"Petal.Length"  ,"Petal.Width"  )



shinyServer(function(input, output) {
    output$tree <- renderPlot({
        fancyRpartPlot(mdl$finalModel)
    })

    output$caption <- renderText({ 
    flower$Petal.Length <- input$plength
        flower$Petal.Width <- input$pwidth
        p = predict(mdl,flower)
        levels(p)[p]
    })

})
