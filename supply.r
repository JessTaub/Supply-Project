library(foreign)

#Read in supply chain data
banana.data <- read.csv('C:/Users/Grant/Dropbox/supply/Supply Chain Data/banana_republic_raw.csv', header= TRUE, skip=5)

banana.df=read.table(file.choose(),header=TRUE,sep=",",fill=TRUE) #fill=TRUE fixed problem where R couldn't handle a blank space in a dataframe
#GK-08-13-15
#This table has 5 more obs. whats up with that?

#E:\HDocuments\Supply Project


#GK-08-06-15
#loop on grepl
dummy <- NULL
var <- c("SHIPPER","SHIPPER.ADDRESS")

for (i in 1:2){
  dummy[i] <- grepl("ADD",var[i])
}
dummy

#GK-08-13-15
#revised loop on grepl
app <- apply(banana.data, 2, function(x) grepl("BANANA REPUBLIC", x))

banana.sub <- subset(banana.data, apply(app, 1, function(x) any(x==T)))

