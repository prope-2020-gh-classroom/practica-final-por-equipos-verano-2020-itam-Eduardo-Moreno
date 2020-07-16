# Clean working directory
rm(list=ls())

# Packages
library(tidyverse)

# Setting working directory
setwd("~/Documents/Prope20MCD/Practicas_equipos/practica-final-por-equipos-verano-2020-itam-Eduardo-Moreno")

# Datos Mayo 19
may_19 <- read.csv('2019-05.csv')
dim(may_19)
head(may_19)
class(may_19$Fecha_Hora_Retiro)
may_19$Fecha_Hora_Retiro[3]

# Datos Mayo 20
may_20 <- read.csv('2020-05.csv')
dim(may_20)
head(may_20)

# Observando la base de mayo 20, esta ordenada de acuerdo al usuario
# entonces la ordenamos de acuerdo a la fecha y hora
may_20 <- arrange(may_20,Fecha_Hora_Retiro)

# Otra observacion es que la hora y la fecha estan en una sola variable
# por lo tanto la separamos
may_20 <- tidyr::separate(may_20, Fecha_Hora_Retiro, 
                c("Fecha_Retiro", "Hora_retiro"), 
                sep = " ")

may_20 <- tidyr::separate(may_20, Fecha_Hora_Arribo, 
                        c("Fecha_Arribo", "Hora_Arribo"), 
                        sep = " ")

# Observamos la base
head(may_20)
dim(may_20)

# Creamos otra base sin tomar en cuenta el ID de usuario
base_bien <- may_20[,2:10]
head(base_bien)
base_bien$Hora_Arribo[1]
length(eco_5$Hora_Arribo)

# Observamos la base
glimpse(may_20)
glimpse(base_bien)

# La escribimos de nuevo
write.csv(base_bien,file='Mayo20.csv',row.names = F)


