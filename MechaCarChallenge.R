# Import dependencies
library(dplyr)


# Read in MechaCar_mpg.csv data
MECHA_MPG <- read.csv(file = 'Data/MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)
# head(MECHA_MPG)

# Linear Regression to predict MPG
mpg_model <- lm(mpg ~ ., data = MECHA_MPG)
mpg_model 

# Summarize mpg model
summary(mpg_model)
# R^2: .7149
# Adj R^2: .6825
# P: 5.35.-11

