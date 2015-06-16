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