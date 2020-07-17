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

#### SEGUNDA PARTE DE LIMPIEZA #####

# Clear workspace
rm(list=ls())

# Packages
library(tidyverse)
library(lubridate)

# Setting working directory
setwd("~/Documents/Prope20MCD/Practicas_equipos/practica-final-por-equipos-verano-2020-itam-Eduardo-Moreno")

# Data
may_raw_20 <- read.csv('Mayo20.csv')

# Observamos datos
glimpse(may_19)
glimpse(may_raw_20)

# Mayo tiene solo 31 dias
length(unique(may_20$Fecha_Arribo))
length(unique(may_19$Fecha_Retiro))

# Separando fechas          
may_20 <- separate(may_raw_20,Fecha_Retiro,
                   c('Dia_Re','Mes_Re','Anio_Re'))
may_20 <- separate(may_20,Fecha_Arribo,
                   c('Dia_Ar','Mes_Ar','Anio_Ar'))

# Haciedolas numericas
may_20[,c(5,6,7,10,11,12)] <- sapply(may_20[,c(5,6,7,10,11,12)],as.numeric)

good_may_20 <- may_20 %>% 
  filter(Mes_Re == 5)

write.csv(good_may_20,file='Mayo20.csv',row.names = F)


# Ahora base del 2019
rm(list=ls())

# Data
may_raw_19 <- read.csv('Mayo19.csv')

# Observamos datos
glimpse(may_raw_19)

# Mayo tiene solo 31 dias
length(unique(may_raw_19$Fecha_Retiro))

# Separando fechas          
may_19 <- separate(may_raw_19,Fecha_Retiro,
                   c('Dia_Re','Mes_Re','Anio_Re'))
may_19 <- separate(may_19,Fecha_Arribo,
                   c('Dia_Ar','Mes_Ar','Anio_Ar'))

# Haciedolas numericas
may_19[,c(5,6,7,10,11,12)] <- sapply(may_19[,c(5,6,7,10,11,12)],as.numeric)

dim(good_may_19)

good_may_19 <- may_19 %>% 
  filter(Mes_Re == 5)

write.csv(good_may_19,file='Mayo19.csv',row.names = F)

unique(good_may_19$Mes_Re)








ggplot(data = may_19, aes(x = Genero_Usuario, fill = Genero_Usuario)) +
  geom_bar(aes(y = ..count../(sum(..count..)))) +
  ggtitle("Género de usuarios") + 
  xlab("Género") +
  ylab("Proporción") +
  theme_light()

ggplot(data = may_19, aes(x = Edad_Usuario)) +
  geom_bar(aes(y = ..count../(sum(..count..))), fill = "darkblue") +
  ggtitle("Edad de usuarios") + 
  xlab("Edad") +
  ylab("Proporción") +
  theme_light()

ggplot(data = may_19, aes(x = Edad_Usuario, fill = Genero_Usuario)) +
  geom_bar(aes(y = ..count../(sum(..count..)))) +
  ggtitle("Edad de usuarios por sexo") + 
  xlab("Edad") +
  ylab("Proporción") +
  theme_light()

ggplot(data = mayo_19, aes(x = Bici)) +
  geom_bar(fill = "darkblue") +
  ggtitle("ID de bicicletas") + 
  xlab("ID") +
  ylab("Proporción") +
  theme_light()

ggplot(data = mayo_19, aes(x = Bici, fill = Genero_Usuario)) +
  geom_bar(aes(y = ..count../(sum(..count..)))) +
  ggtitle("ID de bicicletas por sexo") + 
  xlab("ID") +
  ylab("Proporción") +
  theme_light()
# horas pico
# descriptivos
# splines
# rutas, salida-llegada
# tablas cruzadas
# las cicloestaciones más usadas
# tiempo promedio
# ve lo de geolocalizacion
# diferencia de medias, 





