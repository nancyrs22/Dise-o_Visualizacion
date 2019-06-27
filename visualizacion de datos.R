install.packages("ggplot2")
library("ggplot2")
library("RColorBrewer")
setwd("C:/MIS COSAS/CURSOS/20191/EXPERIMENTOS")
options(max.print = 99999)

dataset <- read.csv("data3.csv", header = T)
ggplot(diamonds,aes(cut, fil = color))
qplot(dataset$Action.Rotate, main = "Rotate Action", xlab = "Comandos", ylab = "Cantidad")

qplot(dataset$Rename.Folder, main = "Rename.Folder", xlab = "Comandos", ylab = "Cantidad")

dataset$Action.Rotate<-factor(dataset$Action.Rotate,levels = c("Rotate","Rotar","Girar","Voltear"), labels = c(0,1, 2,3))