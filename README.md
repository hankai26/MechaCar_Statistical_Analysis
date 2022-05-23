# MechaCar_Statistical_Analysis

This project consists of three technical analysis deliverables and a proposal for further statistical study. You’ll submit the following:

## Linear Regression to Predict MPG
The multiple linear regression model was estimated.
**bold mpg = 6.267 vehicle_length + 0.001245 vehicle_weight + 0.06877 spoiler_angle + 3.546 ground_clearance - 3.411 AWD - 104**
![linear_Regres](https://github.com/hankai26/MechaCar_Statistical_Analysis/blob/main/Image/linear_reg.png)

Based on the analysis result, both **bold vehicle_length** and **bold ground_clearance** are statistically providing non-random amounts of variance to the mpg values. The both factors have a significant impact on mpg. The other factors including vehicle_weight, spoiler_angle and AWD are statistically likely to provide random amounts of variance to the linear model.

The p-value is estimated to be **bold 5.35e-11**, which is much smaller than our assumed significance level of 0.05. Therefore, we can state that there is sufficient evidence to reject our null hypothesis, which means that the slope of our linear model is not zero.

The independent variables have been evaluated and the r-squared value of the model is determined as **bold 0.7149**, which indicates that the model sufficiently predicts our dependent variable, mpg, of MechaCar prototypes.

## Summary Statistics on Suspension Coils
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch (PSI). The total_summary indicates that the variance of all manufacturing data is 62, within the limit of 100 PSI. The current manufacture looks like meeting the design specification based on all manufacturing lots.
![total_sum](https://github.com/hankai26/MechaCar_Statistical_Analysis/blob/main/Image/total_sum.png)

While, further examination on the data in each lot individually shows a high variance in Lot3 as in the lot_summary table. This indicates that Lot3 would likely fail to meet the design criteria, even through Lot1 and Lot2 does qualify.
![lot_sum](https://github.com/hankai26/MechaCar_Statistical_Analysis/blob/main/Image/lot_sum.png)

## T-Tests on Suspension Coils
Using the statistic tool of R, the t-tests are performed to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch. The t-test is used to test the hypotheses:
    - H0 : There is no statistical difference between the sample mean and our presumed population mean of 1,500 PSI.
    - Ha : There is a statistical difference between the sample mean and our presumed population mean of 1,500 PSI.

1. The t.test() function is used in RScript to compare the PSI across all manufacturing lots to the population mean of 1,500 PSI. The p-value is estimated as **bold 0.06028**, which is higher than our assumed significance level of 0.05. Therefore, we conclude that there is insufficient evidence to reject the null hypothesis H0. The mean of all manufacturing lots are statistically consistent with the population mean.

![t-test1](https://github.com/hankai26/MechaCar_Statistical_Analysis/blob/main/Image/t-test_1.png)

2. Three subsets and according tests are conducted to look into all three lots individually to compare with population mean. The p-values of Lot1 and Lot2 are **bold 1** and **bold 0.6072**, respectively. Both p-values are higher than our assumed significance level of 0.05. There is no sufficient evidence to reject our null hypothesis, which means that Lot1 and Lot2 have no statistical difference from the preassumed population mean of 1,500 PSI.

The p-values of Lot3 is **bold 0.04168**, which is smaller than our assumed significance level of 0.05. We then have sufficient evidence to reject the null hypothesis. It is concluded that Lot3 shows statistical difference from the population mean.

![t-test2](https://github.com/hankai26/MechaCar_Statistical_Analysis/blob/main/Image/t-test_2.png)


4. Design a Study Comparing the MechaCar to the Competition