LoanPred <- read.csv("loan-pred.csv", stringsAsFactors = FALSE)
View(LoanPred)
str(LoanPred)

library(ggplot2)


ggplot(LoanPred, aes(x = ApplicantIncome)) + theme(axis.text.x = element_text(angle = 90)) + 
  geom_bar() + 
  labs(y = "Count", title = "Applicant's Income")


ggplot(LoanPred, aes(x = Education, color=Education)) + theme(axis.text.x=element_blank()) + 
  geom_bar() + 
  labs(y = "Count", 
       title = "No. of Graduate or Not Graduate") + xlab("Graduate & Non Graduate")


ggplot(LoanPred, aes(x =Self_Employed, color=Self_Employed)) + theme(axis.text.x=element_blank()) + 
  geom_bar() + 
  labs(y = "Count", 
       title = "No. of Self Employed or Not Self Employeed") + xlab("Self Employeed or Not Self Employeed")

ggplot(LoanPred, aes(x = LoanAmount)) + theme() + 
  geom_histogram(color="black", fill="lightblue",linetype="solid") + 
  labs(y = "Count", title = "Loan Amount")

ggplot(LoanPred, aes(x = LoanAmount, y = ApplicantIncome)) +
  geom_point() + stat_smooth() +labs(title = "Correlation Loan Amount and Applicant Income with Non-Linear Regression")

ggplot(LoanPred, aes(x = LoanAmount, y = CoapplicantIncome)) +
  geom_point() + stat_smooth() + labs(title = "Correlation Loan Amount and Co-Applicant Income  with Non-Linear Regression")

ggplot(LoanPred, aes(x = LoanAmount, y = Loan_Amount_Term)) +
  geom_point() + stat_smooth() + labs(title = "Correlation B/W Loan Amount and Loan Amount Term with Non-Linear Regression")