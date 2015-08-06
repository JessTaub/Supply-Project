library(foreign)

#Read in supply chain data
banana.data <- read.csv('C:/Users/Grant/Dropbox/supply/Supply Chain Data/banana_republic.csv', header= TRUE, skip=5)

banana.df=read.table(file.choose(),header=TRUE,sep=",",fill=TRUE) #fill=TRUE fixed problem where R couldn't handle a blank space in a dataframe

#View data
View(banana.data)

#E:\HDocuments\Supply Project