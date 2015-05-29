---
title: "Statistical Inference Course Project"
author: "Cthugha"
date: "Tuesday, May 19, 2015"
output: pdf_document
---
### Requirements
In this project you will investigate the exponential distribution in R and compare it with the Central Limit Theorem. The exponential distribution can be simulated in R with rexp(n, lambda) where lambda is the rate parameter. The mean of exponential distribution is 1/lambda and the standard deviation is also 1/lambda. Set lambda = 0.2 for all of the simulations. You will investigate the distribution of averages of 40 exponentials. Note that you will need to do a thousand simulations.

Illustrate via simulation and associated explanatory text the properties of the distribution of the mean of 40 exponentials.  You should
1. Show the sample mean and compare it to the theoretical mean of the distribution.
2. Show how variable the sample is (via variance) and compare it to the theoretical variance of the distribution.
3. Show that the distribution is approximately normal.

First, have a look at the plot of exponential distribution
```{r}
hist(rexp(n=1000, rate=0.2))
```

Extract 1000 means of samples from 40 random exponentials 
```{r}
exp<-NULL

for(i in 1:n) exp<-c(exp, mean(rexp(n=40, rate=0.2)))
hist(exp, col="lightgreen")
```
Compare the sample mean to the theoretical mean of the distribution
```{r}
abline(v=1/0.2, lwd=3, col="darkgreen")
```

