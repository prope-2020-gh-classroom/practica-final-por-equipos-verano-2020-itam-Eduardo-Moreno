rm(list=ls())

setwd('Desktop/')


eco <- read.csv('2019-04.csv')
dim(eco)
head(eco)


eco_2 <- read.csv('2020-04.csv')
dim(eco_2)
head(eco_2)
tail(eco_2)

eco_2[,6]

eco_3 <- read.csv('2020-05.csv')
dim(eco_3)
head(eco_3)
sum(is.na(eco_3))

eco_4 <- read.csv('2020-04_1.csv')
dim(eco_4)
head(eco_4)
class(eco_4$Fecha_Hora_Retiro)
eco_4$Fecha_Hora_Retiro[3]

eco_5 <- read.csv('2019-05.csv')
dim(eco_5)
head(eco_5)
class(eco_4$Fecha_Hora_Retiro)
eco_4$Fecha_Hora_Retiro[3]
