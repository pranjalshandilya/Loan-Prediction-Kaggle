getwd()

setwd("C://Users//pranj//OneDrive//TERM 3")

df <-  read.csv("dataset.csv")

head(df)

summary(df)

View(df)

str(df)

#install.packages("VIM")


#kNN imputation

library(VIM)

?kNN


df1 <- read.csv("dataset.csv", header=T, na.strings=c("","NA"))

View(df1)

summary(df1)


df2 <- kNN(df1, c( "Gender", "Dependents", "Self_Employed", "LoanAmount", "Loan_Amount_Term", "Credit_History"), k=3)

summary(df2)
View(df2)

df3 <- subset(df2, select = Loan_ID : Loan_Status)

summary(df3)


write.csv(df3,"C:\\Users\\pranj\\OneDrive\\TERM 3\\datasetk3.csv", row.names = FALSE)
