# Calculate the difference between min and max life expectency
# over time period, by variable(s)
lifeExpDiff <- function(data, variables){
  
  df1 <- ddply(
    .data = data,
    .variables = variables,
    .fun = function(x){mean(x$lifeExp)})
  
  df2 <- ddply(
    .data = df1,
    .variables = c("continent"),
    .fun = function(y){
      max(y$V1) - min(y$V1)
    }
  )
  
  rename(df2, c("V1" = "lifeExpDiff"))
}