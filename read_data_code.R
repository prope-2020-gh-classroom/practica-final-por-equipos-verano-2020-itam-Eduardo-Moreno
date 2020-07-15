rm(list=ls())
library(tidyverse)

eco_5 <- read.csv('2019-05.csv')
dim(eco_5)
head(eco_5)
class(eco_4$Fecha_Hora_Retiro)
eco_4$Fecha_Hora_Retiro[3]

eco_3 <- read.csv('2020-05.csv')
dim(eco_3)
head(eco_3)
hora_retiro <- eco_3$Fecha_Hora_Retiro

otra <- tidyr::separate(eco_3, Fecha_Hora_Retiro, 
                c("Fecha_Retiro", "Hora_retiro"), 
                sep = " ")

otra <- tidyr::separate(otra, Fecha_Hora_Arribo, 
                        c("Fecha_Arribo", "Hora_Arribo"), 
                        sep = " ")

head(otra)
dim(otra)


base_bien <- otra[,2:10]
head(base_bien)
base_bien$Hora_Arribo[1]
length(eco_5$Hora_Arribo)


glimpse(eco_5)
glimpse(base_bien)

write.csv(base_bien,file='Mayo20.csv',row.names = F)

ot <- read.csv('Mayo20.csv')
dim(ot)
glimpse(ot)
head(ot)
