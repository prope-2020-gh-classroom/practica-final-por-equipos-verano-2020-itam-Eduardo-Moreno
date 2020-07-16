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
