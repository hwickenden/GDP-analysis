# Calculate life expectency by variable(s)

lifeExp <- function(data, variables){
  df <- ddply(
    .data = data,
    .variables = variables,
    .fun = function(x){mean(x$lifeExp)})
  rename(df, c("V1" = "lifeExp"))
}