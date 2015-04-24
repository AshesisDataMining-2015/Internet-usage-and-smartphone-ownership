
setwd("D:/E - Learning/Final Year/Second Semester/Datamining/Projects/final/data/Internet-usage-and-smartphone-ownership/data")
list.files()

table = read.csv("January_2014_Web_25_CSV.csv",header=TRUE)

#attach table variable to data set
attach(table)

#set the data type of the internet usage column as a factor since the data is categorical
pial1 <-as.factor(pial1)

#checking levels
levels(pial1)


#setting email usage colum as a factor 
eminuse <-as.factor(eminuse)

#checking levels
levels(eminuse)

#setting internet usage on mobile devices as factor
intmob <-as.factor(intmob)

#checking levels
levels(intmob)

#settting smartphone ownership as factor
smart1 <-as.factor(smart1)

#setting positive online experiences as factor
pial8a <- as.factor(pial8a)

#setting negative online expriences as factor
pial8b <-as.factor(pial8b)

#setting recent internet usage as factor
pial2 <-as.factor(pial2)

#setting internet dependency as factor
pial6 <-as.factor(pial6)

#find persentages of respondents who own computer or do not
percent <-table(pial1)/1006

#ploting the percentage computer ownership aginst responses.
barplot(percent,main="TITLE",xlab="Computer Ownership",ylab="%",las=1,names.arg=c("YES","NO","DON'T KNOW","REFUSE"))

#finding persentage of respondents who use the mobile phones to surf the net
internetMobile <- table(intmob)/1006

#plotting the percentage of respondents who use the mobile phones to surf the net agains responses
barplot(internetMobile, main = "Title",xlab="Surf the Internet with mobile devices",ylab="%",las=1,names.arg=c("Yes","No","Dont' know","Refuse"))

#Now we explore relationships
#table for relationship between browsing using a mobile device and email usage
relationship1 <-table(intmob,eminuse)

#plotting graph of the relationship
barplot(relationship1,beside=T,legend.text=c("Uses internet","Uses Phone"),main="Internet use and Phone ownership",xlab="Response",ylab="Respondents", las=1,col=c(2,4))

#Relationship between smartphone ownership and browsing on a mobile device
relationship2 <-table(intmob,smart1)

#plotting graph of the relationship
barplot(relation,beside=T,legend.text=c("Uses internet","Smart Phone"),main = "Browsing with Smartphone",xlab="Responses",ylab="Respondents",las=1,col=c(3,5))

#Mosaic plot of the relationship
mosaicplot(relationship2)

#relationship between internet usage at work and at home
relationship3 <-table(pial2,pial3,pial4)

#plotting a graph of the relationship
barplot(relationship3,beside=T,legend.text=c("Home","Work"),main = "Recently Used",xlab="Responses",ylab="Responsents",las=1,col=c(5,6))

#mosaic plot of the relatiionshp
mosaicplot(relation3,main = "Recently Used Internet",xlab="Home",ylab="Work",las=1,col=c(5,6))

#table determining how hard it would be to stop using the smart phone to browse 
relationship4 <-table(pial5c,pial5d)

#plotting a graph of the table
barplot(relationship,beside=T,legend.text=c("SmartPhone","Internet"),main = "How hard it would be to stop using",xlab="Responses",ylab="Responsents",las=1,col=c(1,2), arg=c("Very hard","Somewhat hard","Not too hard","Not hard at all","Impossible","Don't use","Don't know","Refused"))

#table to dererming when responsents started using the internet
relationship5 <-table(intmob,pial7)

#plotting graph of the list of years agains the number of respondents 
barplot(relationship5,beside=T,legend.text=c("Internet use","Started using Internet"),main = "How long they've been using",xlab="Responses",ylab="Responsents",las=1,col=c(2,3))

#table to determing whether respondents have solved problems with groups online
relationship6 <-table(intmob,pial8a)

#plotting the graph of the table
barplot(relationship6,beside=T,legend.text=c("Internet use on mobile device","Joined groups to solve problems"),main = "Problem Solving",xlab="Responses",ylab="Responsents",las=1,col=c(3,4))

#table to determing whether respondents have had unpleasant experiences online
relationship7 <-table(intmob,pial8c)

#plotting grph of the
barplot(relationship7,beside=T,legend.text=c("Internet use on mobile device","Been attacked online"),main = "Unpleasant Experience",xlab="Responses",ylab="Responsents",las=1,col=c(5,6))

#table to determing the how dependent respondents are on the internet
relationship8 <-table(intmob,pial6)

#plotting graph of the relationship
barplot(relationship7,beside=T,legend.text=c("Internet use on mobile device","Dependency on the internet"),main = "Virtually Impossible to stop using the internet",xlab="Responses",ylab="Responsents",las=1,col=c(1,3))
