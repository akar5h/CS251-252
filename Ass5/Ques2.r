

setwd("C:/Users/AKARSH/Downloads")
df <-	read.csv("1486454976_463__data.txt") 
aggregate( cbind( Sepal.Length , Sepal.Width , Petal.Length , Petal.Width) ~ Species , data = df , mean)	#mean Speciewise
aggregate( cbind( Sepal.Length , Sepal.Width , Petal.Length , Petal.Width) ~ Good , data = df , mean)  #mean for good
