
PierreData <- read.csv(file="c:/Temp/pierre.csv", header=TRUE, sep=",")
PierreData <- read.csv(file="c:/Temp/pierre.csv", header=TRUE, sep=",")
library(tidyverse)
library(ggplot2)
PierreData <- read_csv(file="c:/Temp/pierre.csv")

# All mitigations plotted
PierreData$base_alt <- as.factor(PierreData$base_alt)
ggplot()+        
  geom_point(data=PierreData, mapping=aes(y = tot_ghg, x = n_lossha, colour=base_alt)) 

ggplot()+        
  geom_point(data=PierreData, mapping=aes(y = tot_ghg, x = n_lossha, colour=base_alt)) 
temp0 <- PierreData %>% 
  filter(base_alt %in% c("0", "1" ))
cols <- c("0"= "red", "1" = "blue")
ggplot()+        
  geom_point(PierreData, mapping=aes(y = tot_ghg, x = n_lossha, colour=base_alt)) + scale_colour_manual(values = cols)
cols <- c("0"= "red", "1" = "blue")
cols1 <- c("0"= 19, "1" = 1)
size1 <- c("0"= 3, "1" = 1)
ggplot()+        
  geom_point(data=PierreData, mapping=aes(y = tot_ghg, x = n_lossha, colour=base_alt, shape=base_alt, size=base_alt))  + scale_colour_manual(values = cols) + scale_shape_manual(values = cols1) + scale_size_manual(values = size1)
P <-ggplot()+ geom_point(data=PierreData, mapping=aes(y = tot_ghg, x = n_lossha, colour=base_alt, shape=base_alt, size=base_alt))  + scale_colour_manual(values = cols) + scale_shape_manual(values = cols1) + scale_size_manual(values = size1)

P + labs(y="GHG (kg CO2-eq/ha) ", x="Nitrate leaching (kg N/ha)")
Q <- P + labs(y="GHG (kg CO2-eq/ha) ", x="Nitrate leaching (kg N/ha)")
Q + theme(legend.position = "none")
