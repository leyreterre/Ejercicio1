library(readxl)
library(dplyr)
setwd("C://data science//Ejercicio 1 clase//Ejercicio1//datos")
datos<-read_xlsx("online_retail_II.xlsx")
str(datos)
datos$InvoiceDate<-as.Date(datos$InvoiceDate)
datos$Invoice<-as.factor(datos$Invoice)
datos$StockCode<-as.factor(datos$StockCode)
datos$`Customer ID`<-as.factor(datos$`Customer ID`)

summary(datos)
dim(datos)
head(datos)
class(datos)
length(datos)
str(datos)

pedidos_diferentes<-length(unique(datos$Invoice))

