# Reading the given information in the CSV file
setwd("C:\\BAN 602\\R working directory")
info <- read.csv(file="Case_4.csv", header = TRUE)

#Q1
summary(info)
tapply (info$Salary, info$Experience, summary)
tapply (info$Salary, info$Position, summary)
tapply (info$Salary, info$Experience, var)
tapply (info$Salary, info$Position, var)
tapply (info$Salary, info$Experience, sd)
tapply (info$Salary, info$Position, sd)

#Q2
#95% Confidence interval
mean(info$Salary)
sd(info$Salary)
t.test(info$Salary)

#Q3
#ANOVA Test
a <- aov( Salary~Experience ,a.info<- info)
summary(a)
#Q4
#ANOVA Test
b <- aov( Salary~Position,a.info<- info)
summary(b)


#Q5
#Two Factor Factorial Experiment
two.way<- aov(Salary~Position*Experience,b.info<-info)
summary(two.way)
