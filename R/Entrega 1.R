#install.packages("janitor")
library(janitor)

datos <- read.csv(file = "train.csv",header = TRUE, sep = ",")

head(datos)
class(datos)
head(datos$location)

tabyl(datos$location)
tabyl(datos$state)
tabyl(datos$tweet)

levels(datos$location)
head(levels(datos$location))
Summary(datos$location)

datos2 <- subset(datos, location != '')

head(tabyl(datos2$location))
datos2$location
replace(datos2$location,"ALABAMA","Alabama")

datos2$location[datos2$location=="Alabama...=)"]<- "Alabama"
