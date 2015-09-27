shinyUI(
  pageWithSidebar(
  headerPanel("Calculate the Human development index for a country "),
  sidebarPanel(
    sliderInput('LE','Enter the life expectancy in years', value = 70, min = 20, max = 100),
    sliderInput('MYS','Enter the mean years of schooling', value = 15, min = 5, max = 25),
    sliderInput('EYS','Enter the expected years of schooling', value = 18, min = 5, max = 30),
    sliderInput('GNI','Enter the per capita (PPP) Gross national income in US $', value = 75000, min = 100, max = 200000)
    ),
  mainPanel(
    h3(" The Human development index for the country you entered is:"),
    verbatimTextOutput("HDI"),
    h4("Sample HDI for different countries:"),
    h5("Norway: 0.944 "),
    h5("Brazil:0.744"),
    h5("India: 0.586 "),
    h5("Mali: 0.407 ")
    )
   )
  )