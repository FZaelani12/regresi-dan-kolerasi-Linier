#menambahkan data yang terdapat pada direktori
setwd("D:\\INFORMATIKA\\Pemograman simulasi")
barbel = read.table("data.txt",header=TRUE)

#Membuat plot data x dan y
plot(barbel$x,barbel$y,xlab="jumlah angkat",ylab="nilai")

#mendeklasikan nilai x dan y
attach(barbel)

#proses Regresi data
reg.barbel = lm(y~x)
summary(reg.barbel)

#membuat plot regesi
abline(coefficients(reg.barbel),col="blue")

#proses kolerasi data
col(x,y)