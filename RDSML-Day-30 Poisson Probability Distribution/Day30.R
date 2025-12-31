5+6
setwd("~/")
# Importing the dataset
tooth_data = ToothGrowth
# Creating a function for summarizing the data
# based on the grouping variables
data_summary = function(data, varname, groupnames){
  require(plyr)
  summary_func = function(x, col){
    c(mean = mean(x[[col]], na.rm = TRUE), sd = sd(x[[col]], na.rm = TRUE))
  }
  data_sum = ddply(data, groupnames, .fun = summary_func, varname)
  data_sum = rename(data_sum, c("mean" = varname))
  return(data_sum)
}
d_summary = data_summary(tooth_data, varname = "len", groupnames = c("supp", "dose"))
View(tooth_data)
# data_sum = rename(data_sum, c("mean" = varname))
return(all_summary)
data_summary = function(data, varname, groupnames){
  require(plyr)
  summary_func = function(x, col){
    c(mean = mean(x[[col]], na.rm = TRUE), sd = sd(x[[col]], na.rm = TRUE))
  }
  all_summary = ddply(data, groupnames, .fun = summary_func, varname)
  # data_sum = rename(data_sum, c("mean" = varname))
  return(all_summary)
}
d_summary = data_summary(tooth_data, varname = "len", groupnames = c("supp", "dose"))
View(d_summary)
View(tooth_data)
data_summary = function(data, varname, groupnames){
  require(plyr)
  summary_func = function(x, col){
    c(mean = mean(x[[col]], na.rm = TRUE), sd = sd(x[[col]], na.rm = TRUE))
  }
  all_summary = ddply(data, groupnames, .fun = summary_func, varname)
  data_sum = rename(all_summary, c("mean" = varname))
  return(data_sum)
}
d_summary = data_summary(tooth_data, varname = "len", groupnames = c("supp", "dose"))
d_summary = data_summary(tooth_data, varname = "len", groupnames = c("supp", "dose"))
# Converting 'dose' to a factor variable
d_summary$dose = as.factor(d_summary$dose)
class(d_summary$dose)
# Standard deviation of the mean as error bar with explanation
library(ggplot2)
ggplot(d_summary)
ggplot(d_summary, aes(x = dose, y = len))
ggplot(d_summary, aes(x = dose, y = len))+
  geom_bar(stat = "identity")
ggplot(d_summary, aes(x = dose, y = len, fill = supp))+
  geom_bar(stat = "identity")
ggplot(d_summary, aes(x = dose, y = len, fill = supp))+
  geom_bar(stat = "identity", position = position_dodge())
ggplot(d_summary, aes(x = dose, y = len, fill = supp))+
  geom_bar(stat = "identity", position = position_dodge())
ggplot(d_summary, aes(x = dose, y = len, fill = supp))+
  geom_bar(stat = "identity", position = position_dodge())+
  geom_errorbar(aes(ymin = len - sd, ymax = len + sd))
ggplot(d_summary, aes(x = dose, y = len, fill = supp))+
  geom_bar(stat = "identity", position = position_dodge())+
  geom_errorbar(aes(ymin = len - sd, ymax = len + sd), width = 0.2)
ggplot(d_summary, aes(x = dose, y = len, fill = supp))+
  geom_bar(stat = "identity", position = position_dodge())+
  geom_errorbar(aes(ymin = len - sd, ymax = len + sd), width = 0.2, position = position_dodge())
ggplot(d_summary, aes(x = dose, y = len, fill = supp))+
  geom_bar(stat = "identity", position = position_dodge())+
  geom_errorbar(aes(ymin = len - sd, ymax = len + sd), width = 0.2, position = position_dodge(1))
ggplot(d_summary, aes(x = dose, y = len, fill = supp))+
  geom_bar(stat = "identity", position = position_dodge())+
  geom_errorbar(aes(ymin = len - sd, ymax = len + sd), width = 0.2, position = position_dodge(.9))
ggplot(d_summary, aes(x = dose, y = len, fill = supp))+
  geom_bar(stat = "identity", position = position_dodge())+
  geom_errorbar(aes(ymin = len - sd, ymax = len + sd), width = 0.2, position = position_dodge(.9))+
  theme_minimal()
setwd("D:/R/R-for-Data-Science-and-Machine-Learning-with-NBICT-LAB-Batch-8/RDSML-Day-30 Poisson Probability Distribution")
ppois(q = 3, lambda = 5)
ppois(q = 3, lambda = 5) - ppois(q = 2, lambda = 5)
dpois(x = 3, lambda = 5)
n <- seq(0:5)
n <- seq(0,5)
n
n
dpois( = n, lambda = 5)
dpois(x = n, lambda = 5)
# Poisson probability distribution using the visualize package
barplot(dpois(x = n, lambda = 5))
# Poisson probability distribution using the visualize package
library(visualize)
visualize.pois(stat = 4, lambda = 10)
# Probability of getting 4 or less calls with average 10
visualize.pois(stat = 4, lambda = 10, section = "upper")
visualize.pois(stat = c(4:6), lambda = 10, section = "bounded")
visualize.pois(stat = c(2:4), lambda = 5, section = "bounded")
visualize.pois(stat = c(2:4), lambda = 5, section = "bounded")
visualize.pois(stat = c(3:3), lambda = 5, section = "bounded")
visualize.pois(stat = c(4,6), lambda = 10, section = "bounded")
visualize.pois(stat = c(2,4), lambda = 5, section = "bounded")
visualize.pois(stat = c(3,3), lambda = 5, section = "bounded")
visualize.pois(stat = c(2,5), lambda = 5, section = "tails")
