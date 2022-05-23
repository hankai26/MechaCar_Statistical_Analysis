## Linear Regression to Predict MPG ##
# Use the library() function to load the dplyr package
library(dplyr)
# Import and read in the MechaCar_mpg.csv file as a dataframe
MechaCar_data <- read.csv('MechaCar_mpg.csv')
# Perform linear regression using the lm() function
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_data)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_data)) #generate summary statistics

## Summary Statistics on Suspension Coils ##
sus_Coils_data <- read.csv('Suspension_Coil.csv')
# creates a total_summary dataframe to get the mean, median, variance, and standard deviation 
# of the suspension coil’s PSI column
total_summary <- sus_Coils_data %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups='keep')
lot_summary <- sus_Coils_data %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups='keep')

## T-Tests on Suspension Coils ##
# determine if the PSI across all manufacturing lots is different from the population mean
t.test(sus_Coils_data$PSI, mu=mean(sus_Coils_data$PSI)) #compare sample versus population means
# determine if the PSI for each manufacturing lot is ifferent from the population mean
lot1_data <- subset(sus_Coils_data, Manufacturing_Lot == "Lot1")
lot2_data <- subset(sus_Coils_data, Manufacturing_Lot == "Lot2")
lot3_data <- subset(sus_Coils_data, Manufacturing_Lot == "Lot3")
t.test(lot1_data$PSI, mu=mean(sus_Coils_data$PSI))
t.test(lot2_data$PSI, mu=mean(sus_Coils_data$PSI))
t.test(lot3_data$PSI, mu=mean(sus_Coils_data$PSI))


