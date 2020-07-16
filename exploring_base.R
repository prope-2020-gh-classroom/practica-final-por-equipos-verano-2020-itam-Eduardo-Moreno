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

ggplot(data = mayo_19, aes(x = Edad_Usuario, fill = Genero_Usuario)) +
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