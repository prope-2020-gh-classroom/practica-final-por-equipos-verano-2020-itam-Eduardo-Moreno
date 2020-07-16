# Clear workspace
rm(list=ls())

# Packages
library(tidyverse)

# Setting working directory
setwd("~/Documents/Prope20MCD/Practicas_equipos/practica-final-por-equipos-verano-2020-itam-Eduardo-Moreno")

# Data
may_19 <- read.csv('Mayo19.csv')
may_20 <- read.csv('Mayo20.csv')

glimpse(may_19)
glimpse(may_20)

library(lubridate)

length(unique(may_20$Fecha_Retiro))
length(unique(may_19$Fecha_Retiro))
hola <- dmy(may_20$Fecha_Retiro)
head(hola)
nuevo <- data.frame('dia'=day(hola),
                    'mes'=month(hola),
                    'nio'=year(hola))
dim(nuevo)
head(nuevo)


nuevo_2 <- subset(nuevo, mes!=4)
dim(nuevo_2)
head(nuevo_2)
unique(nuevo_2$dia)


hist(nuevo_2$dia,breaks=seq(0,31,1))


# horas pico
# descriptivos
# splines
# rutas, salida-llegada
# tablas cruzadas
# las cicloestaciones más usadas
# tiempo promedio
# ve lo de geolocalizacion
# diferencia de medias, 









