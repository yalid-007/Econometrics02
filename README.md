# Econometrics02
This file contains the questions to an econometrics assignment related to housing prices in Boston.

Question 3
We are interested in investigating the effect of air pollution on housing value. Run the following code to download a dataset on housing prices in Boston

install.packages("MASS")
library(MASS)
data(Boston)
Run

?Boston
to see the meaning of the data names.

We will first work with a sample of 100 observations from the Boston data. Run the following code as is. samp_Boston will be your sample dataset.

set.seed(1)
samp_Boston <- Boston[sample(506,100),]
Q3-1 Estimate the following regression equation with your sample data:
log(Yi)=β0+β1log(X1i)+β2X2i+εi
where

Y= median value of owner-occupied homes in $1000s.

X1 = nitrogen oxides concentration (parts per 10 million).

X2 = per capita crime rate by town.

Include your output table using stargazer. Interpret your β̂ 1. Is it significantly different from zero?

Q3-2 What sort of plausible omitted variable bias may exist in the above regression that can bias the interpretation of β̂ 1? What is the direction of this bias?

Q3-3 One potential omitted variable bias from above is the presence of industrial factories, which will increase air pollution while lowering housing prices (from noise levels, desirability of neighborhood, etc.) Thankfully, we have data on the proportion of non-retail business acres per town. Re-run the regression above, but this time including the indus variable.

Include your output table using stargazer. Interpret your β̂ 1 now. What happened to the magnitude of the coefficient? Why? And what happened to the standard errors? Is your β̂ 1 still significantly different from zero now?

Q3-4 In the previous problem we ran into the issue of high multicollinearity (but not perfect multicollinearity, otherwise you violate full rank and can’t even run your regression to begin with). Air pollution levels and proportion of factories move together too much so that the coefficients cannot be precisely estimated. One solution to the multicollinearity problem is to jUsT iNCreAse tHe SAmpLe sIzE.

In this case however we can actually increase the sample size (since we created an artificially small sample to begin with). Try running the regression in Q3-3 with the full dataset Boston.-

Include your output table using stargazer. What happened to the standard errors on β̂ 1 now? Is your β̂ 1 significantly different from zero now? Did increasing your sample size help?

Q3-5 Now, run the “kitchen sink” regression, that is, include every single variable from the dataset as covariates.

Include your output table using stargazer. What happened to the standard errors on β̂ 1 now? Is your larger sample large enough for your kitchen sink?

Question 4
In this question we will practice with the exclusion restrictions and linear restrictions. Using the full Boston dataset from before, our baseline will be

log(Yi)=β0+β1log(X1i)+β2log(X2i)+β3log(X3i)+β4log(X4i)+εi
where

Y= median value of owner-occupied homes in $1000s.

X1 = nitrogen oxides concentration (parts per 10 million).

X2 = per capita crime rate by town.

X3 = proportion of owner-occupied units built prior to 1940

X4 = pupil-teacher ratio by town.

For each of the questions, to get full credit, report the following:

The restricted and unrestricted regression models

The q,N,K,SSRr,SSRur

The F-test statistic and its distribution

The critical value at α=0.05.

Comparison of the test statistic to the critical value, and the results of your hypothesis test.

Hint: The R function to find the critical value for the F distribution with J numerator degrees of freedom and K denominator degrees of freedom at the significance level of L is qf(1-L,J,K)

Hint: If lm1 is your regression model (i.e., lm1 <- lm(~~~)), then sum(lm1$residual^2) will give you the SSR.

Q4-1 First, test the significance of the regression, i.e., the joint hypothesis that

H0:β1=0,β2=0,β3=0,β4=0
H1:!H0

Hint: As mentioned in class, the regression output automatically conducts this test for you. You can use the reported F statistic here as a check to see your results are accurate.

Q4-2 Suppose you’re interested if the air pollution levels and the crime rate of the neighborhoods have the same effect on median value.

Test the hypothesis that

H0:β1=β2
H1:!H0

Hint: Be careful of logs.

Q4-3 Suppose you’re interested if the age of the homes have twice the effect plus 20% effect on median value compared to crime rate.

Test the hypothesis that

H0:β3=2β2+0.2
H1:!H0
