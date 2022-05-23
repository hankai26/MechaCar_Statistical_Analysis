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

