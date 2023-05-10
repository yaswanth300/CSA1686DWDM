a<-airquality
a
new<-lm(a$Ozone~a$Wind)
new
summary(new)
b<-data.frame(x=90)
result<-predict(new,b)
result
