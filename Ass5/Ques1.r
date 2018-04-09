load(file="./bindata.txt",  verbose =  TRUE)  #load file bindata

print("Mean")
cbind(mean(data1), mean(data2), mean(data3))

print("Quantiles:")
cbind(quantile(data1), quantile(data2), quantile(data3))

print("Standard Deviation=")
cbind(sd(data1), sd(data2), sd(data3))


