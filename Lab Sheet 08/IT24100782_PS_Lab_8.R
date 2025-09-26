setwd("C:\\Users\\ADMIN\\Desktop\\PS_Lab_8")

getwd()
# Read the data file

weights <- read.table("Exercise - LaptopsWeights.txt", header = TRUE)
fix(data)
attach(data)

#Q1
popmn<-mean(Weight.kg.)
popmn
popsd<-sd(Weight.kg.)
popsd

# Q2
samples<-c()
n<-c()
for(i in 1:25){
  s<-sample(Weight.kg.,6,replace = TRUE)
  samples<-cbind(samples,s)
  n<-c(n,paste('S',i))
}
colnames(samples)=n
s.means<-apply(samples,2,mean)
s.means
s.sd<-apply(samples,2,sd)
s.sd

#Q3
#calculate the mean and standard deviation of the 25 sample means 
samplemean<-mean(s.means)
samplemean
samplesd<-sd(s.sd)
samplesd

#state there relationship of them with true mean and true standard deviation
popmn
samplemean

truesd=popsd/5
samplesd
