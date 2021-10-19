#Import Libraries
library(dplyr)

#Deliverable I

# Read in the CSV file
MechaCar_df <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)

# Multiple linear regression statement is as follows with all six variables:
lm(mpg ~ vehicle_length + vehicle_weight  + spoiler_angle + ground_clearance + AWD, data=MechaCar_df) #generate multiple linear regression model

# Multiple linear regression model, statistical metrics using the summary() function:
summary(lm(mpg ~ vehicle_length + vehicle_weight  + spoiler_angle + ground_clearance + AWD, data=MechaCar_df)) #generate summary statistics


# Correlation Matrix
mpg_matrix <- as.matrix(MechaCar_df[,c("mpg","vehicle_length","vehicle_weight","spoiler_angle","ground_clearance","AWD")]) #convert data frame into numeric matrix
cor(mpg_matrix)


#Deliverable II:

# Read in the CSV file
Suspension_df <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F)

# Summary of statistics:
Suspension_summary <- Suspension_df %>% group_by() %>% summarize(Mean=mean(PSI),Median=median(PSI), Variance=var(PSI), SD=sd(PSI)) #create summary table

# Summary of statistics by lot.
lot_summary <- Suspension_df %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

#Deliverable III:
# T-Test

sample_table <- Suspension_df %>% sample_n(50) #randomly sample 50 data points
t.test(log10(sample_table$PSI),mu=mean(log10(Suspension_df$PSI))) #compare sample versus population means

#T-Test for Mu=1500:
t.test(x=Suspension_df$PSI, mu=1500)

#T-Test by Manufactoring lot:
t.test(subset(Suspension_df, Manufacturing_Lot=='Lot1')$PSI, mu=1500)

t.test(subset(Suspension_df, Manufacturing_Lot=='Lot2')$PSI, mu=1500)

t.test(subset(Suspension_df, Manufacturing_Lot=='Lot3')$PSI, mu=1500)

