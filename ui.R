library(shiny)
shinyUI(fluidPage(
  
  # The left column contain the input to choose the excel file
  titlePanel("A Shiny app to read Excel File"),
  
  sidebarLayout(
    sidebarPanel(
      fileInput("file","Choose file to upload"),
    ),
    
    mainPanel(
      uiOutput("tb")
    )
    
    
  )
))

