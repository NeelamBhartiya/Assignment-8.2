#1. Compute the measures of central tendency for salary and reduction which variable has highest center?

library(RcmdrPlugin.IPSUR)
x<- c(mean(RcmdrTestDrive$salary),median(RcmdrTestDrive$salary))
x

#for reduction

y<- c(median(RcmdrTestDrive$reduction),mean(RcmdrTestDrive$reduction))
y

#by plotting histogram we can conclude that more peaked graph of variable reduction hence more highest center

x<-RcmdrTestDrive$salary
h<- hist(x,breaks = 10,col = "red",xlab = "salary",main= "histogram of salary with normal curve")

y<-RcmdrTestDrive$reduction
h<- hist(y,breaks = 10,col = "blue",xlab = "reduction",main= "histogram of reduction with normal curve")


#2. Which measure of center is more appropriate for before and after?

#If the distribution is fairly symmetric then the mean and median should be approximately the same


#by boxplot we can check for median where it lies 
boxplot(RcmdrTestDrive$before,horizontal = TRUE,col = "blue",xlab="before",ylab="Boxplot") 
#normal distributed

boxplot(RcmdrTestDrive$after,horizontal = TRUE,col = "blue",xlab="after",ylab="Boxplot") 
#left skewed as the data is assymetrical distributed

#if we check the skewness of variables 
skew (RcmdrTestDrive$before)
skew (RcmdrTestDrive$after)
#after more negative so data more on right side as compare to before variable

#thus, the median would likely be a good choice and it is more appropriate