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



## Deliverable 3 Technical Analysis

# Population mean (1500)
mu <- 1500

# t-test comparing all manufacturing lots to population mean
t.test(COIL_DATA$PSI,
       mu = mu)

# Lot 1 t-test 
lot1 <- COIL_DATA[COIL_DATA$Manufacturing_Lot == 'Lot1',]

t.test(lot1$PSI,
       mu = mu)

# Lot 2 t-test
lot2 <- COIL_DATA[COIL_DATA$Manufacturing_Lot == 'Lot2',]

t.test(lot2$PSI,
       mu = mu)

# Lot 3 t-test 
lot3 <- COIL_DATA[COIL_DATA$Manufacturing_Lot == 'Lot3',]

t.test(lot3$PSI,
       mu = mu)
