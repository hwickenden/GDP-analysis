# Read in gapminder data
gapminder <- read.csv("data/gapminder-FiveYearData.csv")

# Takes a dataset and multiplies the population column
# with the GDP per capita column.
calcGDP <-function(dat, year = NULL, country = NULL) {
  
  if(!is.null(year)){
    dat <- dat[dat$year == year, ]
  }
  
  if(!is.null(country)){
  dat <- dat[dat$country == country,]
  }
  
  gdp <- dat$pop * dat$gdpPercap
  nu <- cbind(dat, gdp = gdp)
  
  return(nu)
}

# Plot GDP of Argentina over the year
gdp.argentina <- calcGDP(gapminder, country="Argentina")
plot(gdp.argentina$year, gdp.argentina$gdp)

# Plot GDP over the years for all countries seperately
plotGDP <- function(data){
countries <- as.vector(unique(data$country))

for (country in countries){
  nu <- calcGDP(data, country = country)
  plot(nu$year, nu$pop, main = paste(country))
  plot(nu$year, nu$lifeExp, main = paste(country))
  plot(nu$year, nu$gdp, main = paste(country))
}
}
plotGDP(gapminder)
