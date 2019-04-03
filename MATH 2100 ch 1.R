X<-c(rep(1,100),rep(2,9900))
y=sample(X,size = 1000)
table(y)/length(y)


####Section 1.5 Basic Graphics for Data Visualization############
# Histograms consist of dividing the range of the data into consecutive intervals, or bins, and 
# constructing a box or vertical bar, above each bin. 

#The height of each box represents the bin's frequency, which is the number of 
#observations that fall in the bin.

# R will automatically choose the number of bins but it also allows users-specified intervals.

#Stem and leaf plots offer a somewhat different way for organizing and displaying data. 
## The data set "faithful" is an R data set
data("faithful")
head(faithful)
x=faithful$eruptions
hist(x)
hist(x,freq = FALSE)
plot(density(x))
hist(x,col="blue",freq = FALSE,main="Histogram of Eruptions",xlab="eruption",ylab="proportion")
lines(density(x))
stem(x)
getwd()
install.packages("scatterplot3d")
library("scatterplot3d")
br=read.table("BearsData.txt",header = T)
attach(br)
head(br)
hist(Chest.G,main="histogram",xlab="chest.G")
plot(Chest.G,Weight, pch=21,bg=c("red","green")[unclass(Sex)])
legend(x=22,y=400,pch=c(21,21),col=c("red","green"),legend = c("Female","Male"))
pairs(br[4:8],pch=21,bg=c("red","green")[unclass(Sex)])
el=read.table("ElectrProdTemp.txt",header = T)

hist(Chest.G);lines(density(Chest.G))
?scatterplot3d
scatterplot3d(Head.W,Neck.G,Chest.G,angle=135)
x<-seq(1,27)
abc<-rep(0,1000)
for(i in 1:1000){abc[i]<-mean(sample(x,15,replace=T))}
hist(abc)


attach(el)
head(el)
install.packages("scatterplot3d")
library("scatterplot3d")
boxplot(Chest.G~Sex)



