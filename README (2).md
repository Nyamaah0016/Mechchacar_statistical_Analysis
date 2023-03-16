# MechaCar_Statistical_Analysis

### Overview
- ETL in R.
- Linear Regression on Mechanical Car Data Analysis
- Summary of Suspension coil data : Manufacturing Lot Overall, Lot 1, Lot 2 and Lot 3
- T-test on suspension coil data set : Overall T-Test, Lot 1 T-test, Lot 2 T-test, Lot 3 T-test

### Linear Regression
Linear regression is calculated using R in RStudio.
R script applied on the dataset to get the following coefficients.
![image.png](attachment:image.png)

Min to Max |-19.47|~|18.58|
Median -.07
![image-2.png](attachment:image-2.png)

1. Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
   A 95% level of confidence was predetermined, meaning the p-value should be compared to alpha = .05 level of significance to verify if statistically significant.
   Coefficients:
   mpg: 0 < .05, statistically significant, non-random amount of variance
   vehicle length: 0 < .05, statistically significant, non-random amount of variance
   vehicle weight: .08 > .05 not statistically significant, random amount of variance
   spoiler angle: .31 > .05 not statistically significant, random amount of variance
   ground clearance: 0 > .05 statistically significant, non-random amount of variance
   AWD: .19>=.05 not statistically significant, random amount of variance

   In summary, vehicle length and ground clearance variables represent non-random amounts of variance as applied to the mpg values.



2. Is the slope of the linear model considered to be zero? Why or why not?
   Converting from scientific notation, all of the slopes of the variables are shown to be non-zero even though some are close  to zero:
   Coefficients:
   vehicle length: 6.267
   vehicle weight: .001
   spoiler angle: .069
   ground clearance: 3.546
   AWD: -3.411

   The multiple linear regression formula for mpg = -.01 + 6.267(vehicle length)+.001(vehicle weight)+.069(spoiler angle)+3.546(ground clearance)-3.411(AWD), which results in a non-zero slope.



3. Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
   R-squared is .7149, which is a strong correlation for the dataset and shows the dataset is an effective dataset. However, r-    squared is not the only consideration for effectiveness. There may be other variables not included in the dataset     contributing to the variation in the mpg.

## Suspension Coil Summary
### Manufacturing Lot Summary
Mean is 1498.78 for this sample and the population mean is determined to be 1500.
![image.png](attachment:image.png)

### Manufacturing Lot Number Summary
![image-2.png](attachment:image-2.png)
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. 
Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
Variance for the total manufacturing lot is 62 < 100, which is within the expected design specifications of staying under 100 PSI. However, when reviewing the data by Lot number, Lot 3 is a large contributing factor to the variance being high. Lot 3 shows a variance of 170 > 100 and does not meet the design specifications. Lot 1 and Lot 2 have significantly lower variance, 1 and 7 respectively.

## T-Test on Suspension Coils

### T-Test for all Lots
![image.png](attachment:image.png)
Mean < 95% confidence interval
Manufacturing Lots: p-value = .6028, alpha = .05; .60 > .05, which means the total manufacturing lot is not statistically significant from the normal distribution and normality can be assumed

### T-Test for Lot 1
![image.png](attachment:image.png)
Mean < 95% confidence interval

Lot 1: p-value = 1, alpha = .05;

Lot 1 is not statistically significant from the normal distribution and normality can be assumed

### T-Test for Lot 2
![image-2.png](attachment:image-2.png)
Mean < 95% confidence interval

Lot 2: p-value = .6072, alpha = .05; .60 > .05 

Lot 2 is not statistically significant from the normal distribution and normality can be assumed

### T-Test for Lot 3
![image-3.png](attachment:image-3.png)
Mean < 95% confidence interval

Lot 3: p-value = .04168, alpha = .05;.04 < .05, 

Lot 3 is statistically significant from the normal distribution and normality cannot be assumed

## Further Analysis : MechaCar Vs Competitors

- The other metrics could be of interest to a consumer could include cost, car color, city fuel efficiency, highway fuel efficiency, horsepower

- The next metrics to test should be the safety rating, horsepower, and highway fuel efficiency

- The null hypothesis is that the mean of the safety rating is zero. The alternative hypothesis is that the mean of the safety rating is not zero

- Using a multiple linear regression statistical summary would show how the variables impact the safety ratings for MechaCar and their competitors
