# Clear workspace
rm(list=ls())

# Packages
library(tidyverse)
library(lubridate)

# Setting working directory
setwd("~/Documents/Prope20MCD/Practicas_equipos/practica-final-por-equipos-verano-2020-itam-Eduardo-Moreno")

# Data
may_20 <- read.csv('Mayo20.csv')
may_19 <- read.csv('Mayo19.csv')

# Observamos datos
glimpse(may_19)
glimpse(may_20)

may_19 %>% 
  group_by(Genero_Usuario) %>% 
  summarize(media=mean(Edad_Usuario),
            mediana=median(Edad_Usuario),
            min=min(Edad_Usuario),
            max=max(Edad_Usuario))

may_20 %>% 
  group_by(Genero_Usuario) %>% 
  summarize(media=mean(Edad_Usuario),
            mediana=median(Edad_Usuario),
            min=min(Edad_Usuario),
            max=max(Edad_Usuario))

edad_19 <- may_19$Edad_Usuario
edad_20 <- may_20$Edad_Usuario

rgb(102,209,188,maxColorValue = 255,alpha = 200)
rgb(241,158,88,maxColorValue = 255,alpha = 255)
rgb(150,150,150,maxColorValue = 255,alpha = 255)

rgb(233,93,89,maxColorValue = 255,alpha = 255)
rgb(69,180,184,maxColorValue = 255,alpha = 255)

hist(edad_19,
     xlim=c(15,80),ylim=c(0,45000),axes=F,
     xlab='',ylab='',main='Histograma Edad',
     breaks=seq(15,100,1),
     col='#66D1BC',
     border='#969696FF')
axis(1)
axis(2,las=2)
hist(edad_20,add=T,
     breaks=seq(15,100,1),
     col='#F19E58',
     border='#969696FF')

gen <- c(table(may_19$Genero_Usuario),table(may_20$Genero_Usuario))
gen[2]

barplot(gen,axes=F,space = 1,ylim=c(0,gen[2]*1.2))
axis(2,las=2)
text(1.5,gen[1],paste(gen[1]))
text(3.5,gen[2],paste(gen[2]))
text(5.5,gen[3],paste(gen[3]))
text(7.5,gen[4],paste(gen[4]))
mtext('2019',1,at=2.5,padj = 3)
mtext('2020',1,at=6.5,padj = 3)



hist(may_19$Ciclo_Estacion_Retiro)
max(may_20$Ciclo_Estacion_Retiro)
which(may_20$Ciclo_Estacion_Retiro==1002)


reti_19 <- (may_19$Ciclo_Estacion_Retiro)
arri_19 <- (may_19$Ciclo_Estacion_Arribo)
reti_20 <- (may_20$Ciclo_Estacion_Arribo)
arri_20 <- (may_20$Ciclo_Estacion_Retiro)
length(reti_20)

uno <- count(may_20,Ciclo_Estacion_Retiro)
summary(uno)

eje_x <- seq(0,24,1)
eje_y <- seq(0,24,1)
pos
plot(0,type='n', xlim=c(0,500),ylim=c(0,500),
     axes=F,xlab='',ylab='')

axis(1)
axis(2,las=2)
points(eje_x,eje_y)

reti_20 <-  filter(may_20,Ciclo_Estacion_Retiro <= 480)$Ciclo_Estacion_Retiro
arri_20 <-  filter(may_20,Ciclo_Estacion_Arribo <= 480)$Ciclo_Estacion_Arribo
reti_19 <-  filter(may_19,Ciclo_Estacion_Retiro <= 480)$Ciclo_Estacion_Retiro
arri_19 <-  filter(may_19,Ciclo_Estacion_Arribo <= 480)$Ciclo_Estacion_Arribo

estaciones_20 <- may_20 %>% 
  filter(Ciclo_Estacion_Retiro <= 480) %>% 
  filter(Ciclo_Estacion_Arribo <= 480) %>% 
  select(Ciclo_Estacion_Retiro,Ciclo_Estacion_Arribo)

estaciones_19 <- may_19 %>% 
  filter(Ciclo_Estacion_Retiro <= 480) %>% 
  filter(Ciclo_Estacion_Arribo <= 480) %>% 
  select(Ciclo_Estacion_Retiro,Ciclo_Estacion_Arribo)

dim(estaciones_20)
dim(estaciones_19)

hist(estaciones_19[,2],col='#45B4B822',border='#45B4B855',breaks=seq(0,480,3))
hist(estaciones_19[,1],col='#45B4B833',border='#45B4B877',add=T,breaks=seq(0,480,3))

hist(estaciones_20[,1],add=T,col='#E95D5922',border='#E95D59AA',breaks=seq(0,480,3))
hist(estaciones_20[,2],add=T,col='#E95D5911',border='#E95D59AA',breaks=seq(0,480,3))


dias_sem <- c('m','v', rep(c('l','m','v'),4))

c(1,3,6,8,10,13,15,17,20,22,24,27,29,31)
hist(may_19$Dia_Re,col='blue',breaks=seq(0,31,0.5),axes=F)
axis(1,at=c(1,3,6,8,10,13,15,17,20,22,24,27,29,31),labels = dias_sem,hadj = 0.5)
axis(1,at=seq(1,31,1))

31/3

dias_sem <- c('M','V', rep(c('L','M','V'),4))

hist(may_19$Dia_Re,col='blue',border='gray48',breaks=seq(0,31,0.5),
     axes=F,xlab='',ylab='',main='')
axis(1,)


hist(may_20$Dia_Re,col='red',breaks=seq(1,31,1))

