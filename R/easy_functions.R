setup_all <- function(){
  names = c("tidyverse","haven","ggplot2", "car", "PerformanceAnalytics", "lmtest", "foreign", "rapportools", "dplyr", "devtools", "sjPlot", "sandwich")
  require(names)
  
  lapply(names, require, character.only = TRUE)
}

beta_1 <- function(x,y){
 output = cov(x,y)/var(x)  
  print(output)  
}
setup_all()
easysummary <- function(model){
  summary = summary(model)
  if ("Multiple R-squared" <= 0.05){
    print("H0 kann verworfen werden")}else{
      print("H0 wird beibehalten")
    }
}
