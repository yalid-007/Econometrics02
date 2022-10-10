library(wooldridge)
install.packages("MASS")
library(MASS)
data(Boston)
?Boston

set.seed(1)
samp_Boston <- Boston[sample(506,100),]
head(Boston)

lm1 <- lm(log(medv) ~ log(nox) + crim, data = samp_Boston)
summary(lm1)
stargazer(lm1, type = 'text', out = '~/Desktop/Reg2')

#Q3
lm2 <- lm(log(medv) ~ log(nox) + crim + indus, data = samp_Boston)
summary(lm2)
stargazer(lm2, type = 'text', out = '~/Desktop/Reg3')
# Q4
lm3 <- lm(log(medv) ~ log(nox) + crim + indus, data = Boston)
summary(lm3)
stargazer(lm3, type = 'text', out = '~/Desktop/Reg4')
#Q5
lm4 <- lm(log(medv) ~ log(nox) + crim + indus + zn + chas + rm + age + dis + rad + tax + ptratio + black + lstat, data = Boston)
summary(lm4)
stargazer(lm4, type = 'text', out = '~/Desktop/Reg5')
