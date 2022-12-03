#######1.1goose_corgl_corlm
data <- read.table("goose_fig.txt", header = T, sep = ",", stringsAsFactors = F)


head(data)
summary(data)
colnames(data)
class(data)

library(ggplot2)
library(dplyr)
library(sf)

data2 <- filter(data, DomesticOrWild %in% c("Archaeological", "Domestic goose", "Wild goose"))

joonis <- ggplot(data2, aes(x=Corgl, y=Corlm))+
  geom_point(aes(color = factor(DomesticOrWild), shape = factor(DomesticOrWild)))+
  scale_shape_manual(values=c(15, 3, 17))+
  scale_color_manual(values=c('red','violet','pink'))+
  theme(legend.title=element_blank())


joonis+ 
  labs(x = "CorGL (mm)",
       y = "CorLm (mm)")

#######1.2goose_corbf_corbb
data2 <- filter(data, DomesticOrWild %in% c("Archaeological", "Domestic goose", "Wild goose"))

joonis <- ggplot(data2, aes(x=Corbf, y=Corbb))+
  geom_point(aes(color = factor(DomesticOrWild), shape = factor(DomesticOrWild)))+
  scale_shape_manual(values=c(15, 3, 17))+
  scale_color_manual(values=c('red','violet','pink'))+
  theme(legend.title=element_blank())


joonis+ 
  labs(x = "CorBf (mm)",
       y = "CorBb (mm)")

#######1.3goose_corgabf_corbb
data2 <- filter(data, DomesticOrWild %in% c("Archaeological", "Domestic goose", "Wild goose"))

joonis <- ggplot(data2, aes(x=Corgabf, y=Corbb))+
  geom_point(aes(color = factor(DomesticOrWild), shape = factor(DomesticOrWild)))+
  scale_shape_manual(values=c(15, 3, 17))+
  scale_color_manual(values=c('red','violet','pink'))+
  theme(legend.title=element_blank())


joonis+ 
  labs(x = "CorGabf (mm)",
       y = "CorBb (mm)")

#######1.4goose_corbb_bf_corgl_lm
data2 <- filter(data, DomesticOrWild %in% c("Archaeological", "Domestic goose", "Wild goose"))

joonis <- ggplot(data2, aes(x=Corbb/Corbf, y=Corgl/Corlm))+
  geom_point(aes(color = factor(DomesticOrWild), shape = factor(DomesticOrWild)))+
  scale_shape_manual(values=c(15, 3, 17))+
  scale_color_manual(values=c('red','violet','pink'))+
  theme(legend.title=element_blank())


joonis+ 
  labs(x = "CorBb/CorBf (mm)",
       y = "CorGL/CorLm (mm)")
