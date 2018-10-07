#QUes.a.Create a visual for representing missing values in the dataset.
str(bank.full)
summary(bank.full)
df<-na.omit(bank.full)
View(df)

#(There is no missing value in the "bank.full" dataset)


#Ques.b.Show a distribution of clients based on a Job.

plot(marital~job,data = bank.full)


#Ques.c.Check whether is there any relation between Job and Marital Status?

chisq.test(bank.full$job,bank.full$education,correct = FALSE)


#Ques.d.Check whether is there any association between Job and Education?


bank.full$education<-as.numeric(bank.full$education)
bank.full$job<-as.numeric(bank.full$job)

cor.test(bank.full$job ,bank.full$education ,data = bank.full,method =  "pearson")

cor(bank.full$job,bank.full$education)