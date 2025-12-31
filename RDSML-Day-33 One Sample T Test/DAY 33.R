# Importing dataset
myData <- read.csv("bottle_data.csv")

# Checking for the normality
# Shapiro-Wilk test
shapiro.test(myData$value)

# Data is normally distributed

# One sample t test
t.test(x = myData$value, mu = 150)

# Reject H0 and accept H1

