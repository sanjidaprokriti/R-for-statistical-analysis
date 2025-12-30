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
setwd("D:/R/R-for-Data-Science-and-Machine-Learning-with-NBICT-LAB-Batch-8/RDSML-Day-19 Box and Whisker Plot in R")
# Loading the dataset
myData = ToothGrowth
View(myData)
class(myData)
class(myData$dose)
# Converting the variable dose from a numeric to a factor variable
myData$dose = as.factor(myData)
# Converting the variable dose from a numeric to a factor variable
myData$dose = as.factor(myData$dose)
class(myData$dose)
library(ggplot2)
# Basic boxplot
ggplot(myData, aes(x = dose, y = len)) +
  geom_boxplot()
# Rotating the box plot
ggplot(myData, aes(x = dose, y = len)) +
  geom_boxplot() +
  coord_flip()
# Notched box plot
ggplot(myData, aes(x = dose, y = len)) +
  geom_boxplot(notch = TRUE)
# Changing outlier, color, shape, and size
ggplot(myData, aes(x = dose, y = len)) +
  geom_boxplot(outlier.colour = "red")
# Changing outlier, color, shape, and size
ggplot(myData, aes(x = dose, y = len)) +
  geom_boxplot(outlier.colour = "red", outlier.shape = 6)
# Changing outlier, color, shape, and size
ggplot(myData, aes(x = dose, y = len)) +
  geom_boxplot(outlier.colour = "red", outlier.shape = 8)
# Changing outlier, color, shape, and size
ggplot(myData, aes(x = dose, y = len)) +
  geom_boxplot(outlier.colour = "red", outlier.shape = 8, outlier.size = 3)
# Loading the dataset
myData = ToothGrowth
# Converting the variable dose from a numeric to a factor variable
# myData$dose = as.factor(myData$dose)
library(ggplot2)
# Basic boxplot
ggplot(myData, aes(x = dose, y = len)) +
  geom_boxplot()
# Rotating the box plot
ggplot(myData, aes(x = dose, y = len)) +
  geom_boxplot() +
  coord_flip()
# Notched box plot
ggplot(myData, aes(x = dose, y = len)) +
  geom_boxplot(notch = TRUE)
# Changing outlier, color, shape, and size
ggplot(myData, aes(x = dose, y = len)) +
  geom_boxplot(outlier.colour = "red", outlier.shape = 8, outlier.size = 3)
# Loading the dataset
myData = ToothGrowth
# Converting the variable dose from a numeric to a factor variable
myData$dose = as.factor(myData$dose)
library(ggplot2)
# Basic boxplot
ggplot(myData, aes(x = dose, y = len)) +
  geom_boxplot()
# Rotating the box plot
ggplot(myData, aes(x = dose, y = len)) +
  geom_boxplot() +
  coord_flip()
# Notched box plot
ggplot(myData, aes(x = dose, y = len)) +
  geom_boxplot(notch = TRUE)
# Changing outlier, color, shape, and size
ggplot(myData, aes(x = dose, y = len)) +
  geom_boxplot(outlier.colour = "red", outlier.shape = 8, outlier.size = 3)
# Choosing which item to display
ggplot(myData, aes(x = dose, y = len)) +
  geom_boxplot(outlier.colour = "red", outlier.shape = 8, outlier.size = 3)+
  scale_x_discrete(limits = c("0.5", "2"))
scale_x_discrete(limits = c(2"))
# Choosing which item to display
ggplot(myData, aes(x = dose, y = len)) +
geom_boxplot(outlier.colour = "red", outlier.shape = 8, outlier.size = 3)+
# Choosing which item to display
ggplot(myData, aes(x = dose, y = len)) +
geom_boxplot(outlier.colour = "red", outlier.shape = 8, outlier.size = 3)+
scale_x_discrete(limits = c("2"))
# Changing box plot line colors by groups
ggplot(myData, aes(x = dose, y = len, color = dose)) +
geom_boxplot()
# Changing the item order
ggplot(myData, aes(x = dose, y = len, color = dose)) +
geom_boxplot() +
scale_x_discrete(limits = c("2", ".5", "1"))
# Changing the item order
ggplot(myData, aes(x = dose, y = len, color = dose)) +
geom_boxplot() +
scale_x_discrete(limits = c("2", "0.5", "1"))
# Box plot with multiple groups
ggplot(myData, aes(x = dose, y = len, fill = supp)) +
geom_boxplot()
# Changing the box position
ggplot(myData, aes(x = dose, y = len, fill = supp)) +
geom_boxplot(position = position_dodge(1))
# Changing the box position
ggplot(myData, aes(x = dose, y = len, fill = supp)) +
geom_boxplot(position = position_dodge(2))
# Changing the box position
ggplot(myData, aes(x = dose, y = len, fill = supp)) +
geom_boxplot(position = position_dodge(1.5))
# Changing the box position
ggplot(myData, aes(x = dose, y = len, fill = supp)) +
geom_boxplot(position = position_dodge(1)) 
