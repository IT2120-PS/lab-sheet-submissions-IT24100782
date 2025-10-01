setwd("C:\\Users\\ASUS\\Desktop\\Ps_Lab09")
getwd()

#Question1
##Since the true variance is unknown and sample size is less than 30, #we can apply one sample t-test.
#Hypothesis: H0: $\mu$ = 3 Vs H1: $\mu$ != 3
#Consider 5% level of significance
x<-c(3, 7, 11, 0, 7, 0, 4, 5, 6, 2)
t.test(x, mu = 3)

#Question 2
#Part 1
#Since the true variance is unknown and sample size is less than 30, #we can apply one sample t-test
#Consider 5% level of significance
Weight <- c(17.6, 20.6, 22.2, 15.3, 20.9, 21.0, 18.9, 18.9, 18.9, 18.2)
t.test(Weight, mu=25, alternative="less")


#Part2
res <- t.test(Weight, mu=25, alternative="less")
#To extract test statistic, use "res$statistic" command as follows.
res$statistic
#To extract p value for the test, use "res$p.value" command as follows.
res$p.value
#To extract confidence interval for the test, use "res$conf.int" command as follows.
res$conf.int

#Question3
#Part1
#To generate random numbers from a Normal distribution,we can use "rnorm" command as follows.
y<-rnorm(30,mean = 9.8,sd = 0.05)

#Part2
t.test(y, mu=10,alternative="greater")


#Exercise 01
#Part1
# \Generate a random sample of size 25
# Assume a normal distribution with mean 45 and standard deviation 2
set.seed(42) 
baking_time <- rnorm(25, mean = 45, sd = 2)

# Print the sample to the console
print(baking_time)

#Part2

#  Test whether the average baking time is less than 46 minutes
# We use a one-sample t-test (mu is 46, alternative is "less")

# The R command for the test:
test_result <- t.test(baking_time, mu = 46, alternative = "less")

# To display the full result
print(test_result)


