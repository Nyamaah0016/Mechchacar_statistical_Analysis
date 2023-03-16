install.packages("magrittr")
install.packages("dplyr")
library(magrittr)
library(dplyr)
MechaCar <- read.csv("C:/Users/Animesh/Desktop/Assignment 16/MechaCar_mpg.csv",check.names=F,stringsAsFactors = F)

#linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar)

#summary
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar))

#Deliverable 2
#load data
Suspension <- read.csv(file="C:/Users/Animesh/Desktop/Assignment 16/Suspension_Coil.csv",check.names=F,stringsAsFactors = F) 
View(Suspension)
#summary
total_summary <- Suspension %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')
View(total_summary)
#lot summary
lot_summary <- Suspension %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),StDev=sd(PSI))
View(lot_summary)

#Deliverable 3
#t-test to determine consistency in sample means
t.test(Suspension$PSI, mu=1500)

#t-tests for individual lots
t.test(subset(Suspension, Manufacturing_Lot=="Lot1")$PSI, mu=1500)
t.test(subset(Suspension, Manufacturing_Lot=="Lot2")$PSI, mu=1500)
t.test(subset(Suspension, Manufacturing_Lot=="Lot3")$PSI, mu=1500)