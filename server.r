HDI<-function(LE,MYS,EYS,GNI)
  {
  LEI <- (LE - 20)/65
  
  MYSI<- MYS/15; EYSI <- EYS/18  
  EI <- (MYSI + EYSI)*0.5
  
  II <- (log(GNI) - log(100))/6.620073
  
  HDI <- (LEI*EI*II)^(1/3)
  HDI
  }

shinyServer(
      function(input, output)
      {
        output$HDI <- renderPrint({HDI(input$LE,input$MYS,input$EYS,input$GNI)})
     }
    )