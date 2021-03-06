## 1A
  
library(foreign)
library(stats)
attend.df <- read.dta(file.choose())
final <- lm(attend.df$final ~ attend.df$attend) # Linear regression with attend.
summary(final) # Table of coefficients.
final2 <- lm(attend.df$final ~ attend.df$attend + attend.df$skipped) # Linear regression with attend and skipped.
summary(final2) # Table of coefficients.
final3 <- lm(attend.df$final ~ attend.df$attend + attend.df$hwrte + attend.df$priGPA + attend.df$ACT + attend.df$frosh + attend.df$soph) # Linear regression with attend, hwrte, priGPA, ACT, frosh, and soph.
summary(final3) # Table of coefficients.
var.test(attend.df$attend, attend.df$hwrte, conf.level = 0.95)
var.test(attend.df$attend, attend.df$hwrte, conf.level = 0.99)

