## --------------------------------------------------------------
#Load dependencies
library(tidyverse)
library(dplyr)
library(ggplot2)
library(readr)

## --------------------------------------------------------------
#setup environment
getwd()
setwd("C:/Users/otrin/OneDrive/Desktop/Git/r")


## --------------------------------------------------------------
#Load csv files
MechaCar <- read_csv('MechaCar_mpg.csv')
Suspension <- read.csv('Suspension_Coil.csv')

## --------------------------------------------------------------
#rename columns
names(MechaCar)<-str_replace_all(names(MechaCar), c(" " = "_" , "," = "" ))
colnames(MechaCar)

## --------------------------------------------------------------
#Multiple Linear Regression Model
summary(lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,MechaCar))


## --------------------------------------------------------------
# Suspension Coil Analysis / Summary for all Data in Suspension_Coil.csv
suspension_summary <- Suspension %>% summarize(Mean_PSI=mean(PSI),SD_PSI=sd(PSI),Median_PSI=median(PSI),Variance_PSI=var(PSI))
print(suspension_summary)


## --------------------------------------------------------------
# Suspension Coil T-test
sample_table <- Suspension %>% sample_n(50) #random sample of 50 data points

t.test(log10(sample_table$PSI),mu=mean(log10(Suspension$PSI))) #compare sample versus population means


## --------------------------------------------------------------
#one-sample t-test vs the expected population mean of 1500 psi
t_vs_1500 <- t.test(Suspension$PSI, mu=1500)
print(t_vs_1500)


## --------------------------------------------------------------
#summary statistics by lot
psi_by_lot <- Suspension %>% group_by(Manufacturing_Lot) %>% summarize(mean_psi=mean(PSI),median_psi=median(PSI),variance_psi=sd(PSI)^2,stddev_psi=sd(PSI),psi_residuals=mean(PSI)-1500) 
print(psi_by_lot)

## --------------------------------------------------------------
lot1<- filter(Suspension, Manufacturing_Lot=="Lot1")
t_vs_Lot1 <- t.test(lot1$PSI, mu=1500)
print(t_vs_Lot1)

## --------------------------------------------------------------
lot2<- filter(Suspension, Manufacturing_Lot=="Lot2")
t_vs_Lot2 <- t.test(lot2$PSI, mu=1500)
print(t_vs_Lot2)

## --------------------------------------------------------------
lot3<- filter(Suspension, Manufacturing_Lot=="Lot3")
t_vs_Lot3 <- t.test(lot3$PSI, mu=1500)
print(t_vs_Lot3)

