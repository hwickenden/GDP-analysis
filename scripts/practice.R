# Run Script
source('~/test_project/data_analysis.R')

# Print country with max gdpPercap
gapminder[which(gapminder$gdpPercap==max(gapminder$gdpPercap)), c(1,6)]

# Visualise data from Argentina
dat <- gapminder[gapminder$country=="Argentina",]
plot(dat$year, dat$pop)

# Fahrenheit to Kelvin Function
fahr_to_kelvin <- function(temp) {
  kelvin <- ((temp - 32) * (5 / 9)) + 273.15
  return(kelvin)
}

# Kelvin to Celsius Function
kelvin_to_celsius <- function(temp) {
  celsius <- temp - 273.15
  return(celsius)
}

# Fahrenheit to Celsius Function
fahr_to_celsius <- function(temp){
  kelvin <- ((temp - 32) * (5/9)) + 273.15
  celsius <- kelvin -273.15
  return (celsius)
}

# Challenge - Create a Function
fence <- function (original, wrapper){
  text <- c(wrapper, original, wrapper)
  return (text)
}

best_practice <- c("Write", "programs", "for", "people", "not", "computers")
asterisk <- "***"
fence(best_practice, asterisk)

outside <- function(v){
  u <- c(v[1], v[length(v)])
  return(u)
}
dry_principle <- c("Don't", "repeat", "yourself", "or", "others")
outside(dry_principle)

# Challenge - Using Loops
total <- function(x){
v <- 0
  for (i in x){
v <- v + i}
return(v)
}

ex_vec <- c(4, 8, 15, 16, 23, 42)
total(ex_vec)

## Split-Apply-Combine Functions
# Challenge 1
# A: 3 or all apart from 2

# Challenge 2

lifeExp <- function(data, variables){
df <- ddply(
      .data = data,
      .variables = variables,
      .fun = function(x){mean(x$lifeExp)})
rename(df, c("V1" = "lifeExp"))
}
expectency <- lifeExp(gapminder, variables = c("continent", "year"))


