# Read in gapminder data
gapminder <- read.csv("data/gapminder-FiveYearData.csv")

# Takes a dataset and multiplies the population column
# with the GDP per capita column.
calcGDP <-function(dat) {
  gdp <- dat$pop * dat$gdpPercap
  return(gdp)
}



