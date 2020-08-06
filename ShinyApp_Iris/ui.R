
library(shiny)


shinyUI(fluidPage(
    titlePanel("Iris Type Finder"),

    sidebarLayout(
        sidebarPanel(
            sliderInput("plength",
                        "Petal length:",
                        min = 1,
                        max = 8,
                        value = 4,
                        step = 0.1),
            sliderInput("pwidth",
                        "Petal width:",
                        min = 1,
                        max = 3,
                        value = 2,
                        step = 0.1),
            p("prediction:"),
            h1(textOutput("caption"))
            
        ),

        # Show a plot of the generated distribution
        mainPanel(
            h1("What to do"),
            p("Choose the petal width and the petal length to figure out what is the iris specie you are dealing with."),
            h1("Under the hood"),
             plotOutput("tree"),
          
           
        )
    )
))
