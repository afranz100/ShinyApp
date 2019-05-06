library(shiny)
library(dplyr)
library(data.table)

ui <- fluidPage(
  titlePanel("Recidivism Data"),
  dataTableOutput("mytable")
)


server <- function(input,output) {
  output$mytable <- renderDataTable({
    a <- recidivism[,1:8]
  })
}

shinyApp(ui=ui,server=server)

#hellpppp