# One Sample Z Test
# Installing the BSDA package
# install.packages("BSDA")
library(BSDA)

# Importing the dataset
dataset <- read.csv("Perfume.csv")
mean(dataset$Machine.1)

# Only high : Upper test
# Only low : Lower test
# High or low : Two test

z.test(x = dataset$Machine.1, alternative = "greater", mu = 150, sigma.x = 2)

# H0: Sample mean = Population mean
# H1: Sample mean is greater than Population mean

# Reject H0 and accept H1

