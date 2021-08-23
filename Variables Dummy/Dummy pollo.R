# Realizado por: Daniel Esteban Castiblanco Maldonado 


library(readxl)
Pollos_dummy <- read_excel("D:/DANIEL/Desktop/R   epaso/Ejemplo/Dummy/Pollos dummy.xlsx")
View(Pollos_dummy)

install.packages("dummies", dependencies = TRUE)
library(dummies)

#Creamos la dummy para las variables categoricas
Pollos_dummy = cbind(Pollos_dummy, dummy(Pollos_dummy$feed, sep = "_"))
View(Pollos_dummy)



#Dummy con factor: 
library(readxl)
Pollos_dummy <- read_excel("D:/DANIEL/Desktop/R   epaso/Ejemplo/Dummy/Pollos dummy.xlsx")
View(Pollos_dummy)

#Fijo
attach(Pollos_dummy)

#Convierto la variable "feed"en un factor que se reconozca como dummy.
alimento<-factor(Pollos_dummy$feed)
is.factor(alimento)
View (alimento)


#Estimo el modelo con intercepto 
modelo<- lm(Weight~alimento)
summary(modelo)
