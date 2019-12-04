tempat_tb <- ("D:/TBDataMining")
setwd (tempat_tb)
getwd ()

#install dan gunakan library
install.packages("C50")
library(C50)
install.packages("printr")
library(printr)

#pembacaan dataset
dataset <- read.csv("abalone.csv" , sep = ",")
summary(dataset)

#pembuatan model
model <- C5.0 (Sex~. , data=dataset)
#melihat hasil model
summary(model)

#menampilkan gambar model
plot(model)

#membuat dataset
datatesting <- dataset[1:9]

#prediksi pada datatesting
prediksi <- predict(model, datatesting)

#bandingkan hasil prediksi dengan dataset
table(prediksi,dataset$Diameter)
