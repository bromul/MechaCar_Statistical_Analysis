# Import dependencies
library(dplyr)


## Deliverable 1 Technical Analysis

# Read in MechaCar_mpg.csv data
MECHA_MPG <- read.csv(file = 'Data/MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)
head(MECHA_MPG)

# Linear Regression to predict MPG
mpg_model <- lm(mpg ~ ., data = MECHA_MPG) 


# Summarize mpg model
summary(mpg_model)



## Deliverable 2 Technical Analysis

# Read in Suspension_Coil.csv data
COIL_DATA <- read.csv(file = 'Data/Suspension_Coil.csv', check.names = F, stringsAsFactors = F)
head(COIL_DATA)

# Create total_summary df of coils' PSI
total_summary <- COIL_DATA %>% 
   summarise(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))


# Create lot_summary 
lot_summary <- COIL_DATA %>% 
   group_by(Manufacturing_Lot) %>% 
   summarise(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')
