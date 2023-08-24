
#install.packages(plotly)
#install.packages("plotly")
library(plotly)
packageVersion('plotly')
#p <- plot_ly(data = MyData, x = ~nloss_%change, y = ~ghg_%change)
MyData <- read.csv(file="c:/Temp/techseries.csv", header=TRUE, sep=",")
p <- plot_ly(data = MyData, x = ~nloss_%change, y = ~ghg_%change)
MyData <- read.csv(file="c:/Temp/techseries.csv", header=TRUE, sep=",")
MyData<- plot_ly(techseries = MyData, x = ~nloss_%change, y = ~ghg_%change)
View(MyData)

MyData<- plot_ly(techseries = MyData, x = ~nloss_%change, y = ~ghg_%change)
library(tidyverse)
library(ggplot2)
MyData <- read_csv(file="c:/Temp/techseries.csv")

# All mitigations plotted
ggplot()+        
  geom_point(data=MyData, mapping=aes(y = totghg_perha, x = nloss_perha, colour=mitigation)) 
temp0 <- MyData %>% 
  filter(mitigation %in% c("base", "cows" , "feed" , "nfert" , "output"))
cols <- c("base"= "red", "cows" = "blue", "feed" = "blue" , "nfert" = "blue" , "output" = "blue")
ggplot()+        
  geom_point(data=MyData, mapping=aes(y = totghg_perha, x = nloss_perha, colour=mitigation)) + scale_colour_manual(values = cols)
cols <- c("base"= "red", "cows" = "blue", "feed" = "blue" , "nfert" = "blue" , "output" = "blue")
cols1 <- c("base"= 19, "cows" = 1, "feed" = 1 , "nfert" = 1 , "output" = 1)
size1 <- c("base"= 3, "cows" = 1, "feed" = 1 , "nfert" = 1 , "output" = 1)
ggplot()+        
  geom_point(data=MyData, mapping=aes(y = totghg_perha, x = nloss_perha, colour=mitigation, shape=mitigation, size=mitigation))  + scale_colour_manual(values = cols) + scale_shape_manual(values = cols1) + scale_size_manual(values = size1)
 P <-ggplot()+ geom_point(data=MyData, mapping=aes(y = totghg_perha, x = nloss_perha, colour=mitigation, shape=mitigation, size=mitigation))  + scale_colour_manual(values = cols) + scale_shape_manual(values = cols1) + scale_size_manual(values = size1)

 P + labs(y="GHG (kg CO2-eq/ha) ", x="Nitrate leaching (kg N/ha)")
 Q <- P + labs(y="GHG (kg CO2-eq/ha) ", x="Nitrate leaching (kg N/ha)")
 Q + theme(legend.position = "none")

#output approach, mitigations targeted reductions in GHG emmissions by 5,10,15 and 20%.
temp <- MyData %>% 
  filter(mitigation %in% c("base" , "output"))
ggplot() +
  geom_point(data=temp, mapping=aes(y = totghg_perha, x = nloss_perha, colour=mitigation))

#N fertiliser- the mitigations reduced N fertiliser on pastoral blocks by 25%,50%,75% and 100% from the base.Then stock numbers and supplements were reduced to match supply and demand.
temp1 <- MyData %>% 
  filter(mitigation %in% c("base", "nfert"))
ggplot() +
  geom_point(data=temp1, mapping=aes(y = totghg_perha, x = nloss_perha, colour=mitigation))

# feed- the mitigations substituted 50,100% of imported feed with alternative low nitrogen feed and remove 50%, 100% of imported feed then adjust stocking rate to match supply to demand.
temp2 <- MyData %>% 
  filter(mitigation %in% c("base", "feed"))
ggplot() +
  geom_point(data=temp2, mapping=aes(y = totghg_perha, x = nloss_perha, colour=mitigation))

# cows-the mitigations reduced stocking rate, by 5,10,15 & 20% from the base then adjust feed and fertiliser.
temp3 <- MyData %>% 
  filter(mitigation %in% c("base", "cows"))
ggplot() +
  geom_point(data=temp3, mapping=aes(y = totghg_perha, x = nloss_perha, colour=mitigation))





    