# R Analysis of MechaCar Data

## MechaCar Analysis: Predictors of Vehicle MPG

Using a multiple linear regression model the MechaCar prototype the relationship of mpg and the following vehicle  specifications namely 1) vehicle length (feet), 2) vehicle weight (pounds), 3) spoiler angle (degrees), 4) ground clearance (inches), and 5) AWD (All-Wheel Drive, boolean).

A signficance value of p<.05 was decided before the analysis in able to be able to reject the Null hypothesis that the coefficient/variable has no significant effects on fuel efficiency. The Alternate hypothesis is coefficients/variables have an effect on the fuel efficiency.

### Which variables provided a non-random amount of variance to the mpg values?

Based on the analysis, two of the five factors, vehicle length and ground clearance, were significantly associated with vehicle mpg.   Both factors as seen in Table 1, are significantly below the .05 significance level and are therefore good predictors of fuel efficiency. 

__Table 1: Multiple Regression Modeling Results__

Coefficients:
                   Estimate Std. Error t value Pr(>|t|)
Intercept)      -1.040e+02  1.585e+01  -6.559 5.08e-08
vehicle_length    6.267e+00  6.553e-01   9.563 2.60e-12
vehicle_weight    1.245e-03  6.890e-04   1.807   0.0776
spoiler_angle     6.877e-02  6.653e-02   1.034   0.3069
ground_clearance  3.546e+00  5.412e-01   6.551 5.21e-08
AWD              -3.411e+00  2.535e+00  -1.346   0.1852
                    
Intercept)      ***
vehicle_length   ***
vehicle_weight   .  
spoiler_angle       
ground_clearance ***
AWD                 
---
Signif. codes:  
0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 8.774 on 44 degrees of freedom
Multiple R-squared:  0.7149,	Adjusted R-squared:  0.6825 
F-statistic: 22.07 on 5 and 44 DF,  p-value: 5.35e-11

### Is the slope of the linear model considered to be zero?

The F-statistic value of 22.1 and p-value at 5.35e-11 is significant at (p<0.05). Therefore, the slope of the linear model is not considered to be zero.  

### Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

The R-squared value of 0.71 indicates that about 71% of the mpg variance can be explained by model predictors, effectively predicting mpg. Even the adjusted R-squared value of 0.68 still predicts a majority of the observable variance. 

## Suspension Coil Analysis

### Does the current manufacturing data meet this design specification? Why or why
not?

The mean and the median PSI are 1500 psi(pounds per square inch).  Given the summary statistics in Table 2, above, PSI variance is at 76.23 which is below the maximum variance of 100 psi. 

Table 2: Suspension Coil PPI Summary Statistics
  Mean_PSI   SD_PSI Median_PSI Variance_PSI
  1499.531 8.731242   1499.747     76.23459

### Is the suspension coil's PSI results significantly different from the mean population PSI of 1500?

To determine the answer to this question a t-test was performed between the population mean and the sample mean from the suspension coil data at p<.05 with the following hypotheses:

Null hypothesis is the sample mean value is no different from the population mean

Alternate hypothesis is the sample mean is statistically different from the population mean at .05 significance level

The one-sample t-test of the sample mean PSI versus the population mean PSI of 1500 psi performed on a random sample of 50 observations from the Suspension Coil data.  The sample mean value of 1499.6 (95% CI: 1496.919 - 1502.285) was not different from the population mean (t = -0.29819, df = 49, p-value = 0.7668). 

The p value of 0.77 is more than the .05 significance level, we are unable to reject the null hypothesis. Therefore, sample and population means are statistically equal.

## Recommendation for Additional Statistical Study

Other features to evaluate include fuel efficiency, type, and ride quality. The proposed study will evaluate the fuel efficiency of the MechaCar prototypes against available cars of the same class. Fuel efficiency probably one of the most important factor for consumers because it impacts the total cost of ownership significantly.  The question the study will answer is "Does MechaCar beat similarly equipped  competition in fuel efficiency?".

The null hypothesis is:
  MechaCar mean mpg is no different than competitor car mpg.
The alternative hypothesis is:
  MechaCar mean mpg is significantly higher or lower than competitor car mpg.
  
This hypothesis will be tested using a two-sample, two-tailed, t-test.  One sample would be made up of the MechaCar prototypes and the other sample would be made up of comparable on-market vehicles. Comparable vehicles will be matched on car size and price. The assumption of normality in the distribution of mpg in both samples will be tested before proceeding using the Shapiro Wilk Test.

Fuel efficiency data in miles per gallon for the MechaCar prototype and miles per gallon for comparable on-market vehicles (derived from publicly available fuel economy data maintained by the Environmental Protection Agency at www.fueleconomy.gov) will be collected.  
