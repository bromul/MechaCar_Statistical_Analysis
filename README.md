# MechaCar Statistical Analysis


## LInear Regression to Predict MPG

To predict the miles per gallon (mpg) of MechaCar prototypes, we produced a model using all of the provided variables in our dataset. From our model, we have found that vehicle length (p = 5.08e-8) and ground clearance (p = 5.21e-8) are the two coefficients that have provided a non-random amount of variance to the mpg values in the dataset. It should be noted, however, that since this model is contingent on all five variables predicting mpg, there is the possibility of the variables confounding each other - for example, vehicle length and vehicle weight could be related or provide us similar information - which can change how we interpret which variables are explaining our data if we produce further models with less variables.

Our model gives us an r^2 value of .7149 and an adjusted r^2 of .6825 (the adjusted r^2 corrects for each added term, penalizing models for unnecessary complexity). While differing slightly, these two values are close enough for us to feel confident that our model is not too complex and we can rely on our r^2 value. Using this, we can interpret that about 71.5% of the variation in our data can be explained by the model, with an overall positive relationship between mpg and the other variables. In other words, the slope of the linear model is _not_ considered to be zero, but in fact positive/upward. Moreover, as our p-value is also so low (p = 5.35e-11), we are incredibly confident that the produced linear model effectively predicts the mpg of MechaCar prototypes.


## Summary Statistics on Suspension Coils

According to design specifications for the MechaCar, the variance of the suspension coils _must not exceed 100 pounds per square inch_. As seen below, on overview of the MechaCar suspension coils at all lots is well within this metric, with a general variance of about 62.29 pounds per square inch:

![Summary of All Suspension Coil PSI](Images/total_summary.PNG)

However, this changes as we breakdown the analysis to individual manufacturing lots. Lots 1 and 2 are within specifications, with variances of about 0.98 and 7.47 pounds per square inch, respectively. No changes are recommended for their manufacturing processes at this time.

Lot 3, however, is far above the variance threshold, with a MechaCar suspension coil variance of about 170.29. It is recommended that AutosRUs investigate the manufacturing process at Lot 3 and make any necessary changes to bring its variance back within listed specifications:

![Summary of Suspension Coil PSI by Manufacturing Lot](Images/lot_summary.PNG)


## T-tests on Suspension Coils

T-Tests have been run to determine whether the mean PSI for all lots together, as well as individually, were statistically different than the MechaCar population mean of 1500 pounds per square inch.

### All Lots

As seen in the image below, we received a p-value of 0.06028 and produced and are 95% confident that the interval estimate of [1497.507, 1500.053] contains the true mean of all the lots:

![T-Test Comparing All Lots to Population Mean](Images/ttest_all_lots.PNG)

Since our p-value is above our threshold of .05 and since the confidence interval contains the population mean, we _cannot reject_ the null hypothesis that the true mean PSI of all the lots is equal to the population mean of 1500 pounds per square inch. 

### Lot 1

When we compared Lot 1's mean PSI to the population mean, we received a p-value of 1 and are 95% confident that the interval estimate of [1499.719, 1500.281] contains the true mean for Lot 1:

![T-Test Comparing Lot 1 to Population Mean](Images/ttest_lot1.PNG)

Since our p-value is far above our threshold of .05 and since the confidence interval contains the population mean, we _cannot reject_ the null hypothesis that the true mean PSI of Lot 1 is equal to the population mean of 1500 pounds per square inch.

### Lot 2

When we compared Lot 2's mean PSI to the population mean, we received a p-value of 0.6072 and are 95% confident that the interval estimate of [1499.423, 1500.977] contains the true mean for Lot 2:

![T-Test Comparing Lot 2 to Population Mean](Images/ttest_lot2.PNG)

Since our p-value is far above our threshold of .05 and since the confidence interval contains the population mean, we _cannot reject_ the null hypothesis that the true mean PSI of Lot 1 is equal to the population mean of 1500 pounds per square inch.

### Lot 3

When we compared Lot 3's mean PSI to the population mean, we received a p-value of 0.4168 and are 95% confident that the interval estimate of [1492.431, 1499.849] contains the true mean for Lot 3:

![T-Test Comparing Lot 3 to Population Mean](Images/ttest_lot3.PNG)

Our p-value is lower than our threshold of .05 and the confidence interval does not contain the population mean. Therefore, we _reject_ the null hypothesis and accept the alternative hypothesis that the true mean PSI of Lot 3 is _not equal_ to the population mean of 1500 pounds per square inch. It is recommended that AutosRUs investigate Lot 3's manufacturing process and make any necessary changes to bring Lot 3's mean PSI in line with the population.


## Study Design: MechaCar vs Competition

Statistical Study to quantify how MechaCar performs against the competition


Consumer Interest Metrics:
- Cost
- Fuel Efficiency (City/Hwy)
- Horse Power
- Maintenance Cost
- Safety Rating


Questions to Address:
- Which metric(s) we'll test
- What are the Null and Alternative Hypotheses
- What statistical test will be used and why
- What data is needed



