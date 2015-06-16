# Plot GDP over the years for all countries seperately
plotGDP <- function(data){
  countries <- as.vector(unique(data$country))
  
  for (country in countries){
    nu <- calcGDP(data, country = country)
    plot(nu$year, nu$pop, main = paste(country), xlab = paste(unique(nu$year)), ylab = paste(unique(nu$pop)))
    plot(nu$year, nu$lifeExp, main = paste(country), xlab = paste(unique(nu$year)), ylab = paste(unique(nu$lifeExp)))
    plot(nu$year, nu$gdp, main = paste(country), xlab = paste(unique(nu$year)), ylab = paste(unique(nu$gdp)))
  }
}