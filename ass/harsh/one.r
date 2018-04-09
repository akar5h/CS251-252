x = seq(1:10)
a <- 0
b <- 0
c <- 0
d <- 0
x <- 0
y <- 0
z <- 0
for (i in 1:10) {
filename = paste(paste("dist_norm",i,sep="_"), "txt", sep=".")
n = rnorm(100,0.5,0.15)
cat(n,file=filename,sep="\t")

f=n<0.25
n1=length(f[f==TRUE])
f=n[n>=0.25]
f=f[f<0.5]
n2=length(f)
f=n[n<0.75]
f=f[f>=0.50]
n3=length(f)
f=n[n<1]
f=f[f>=0.75]
n4=length(f)
a[i] = n1
b[i] = n2
c[i] = n3
d[i] = n4

g=n<=0.34
m1=length(g[g==TRUE])
g=n[n>0.34]
g=g[g<0.66]
m2=length(g)
g=n[n>=0.66]
g=g[g<=1.0]
m3=length(g)
x[i] = m1
y[i] = m2
z[i] = m3
}

A = matrix(c("0.0",min(a),mean(a),max(a),"0.25",min(b),mean(b),max(b),"0.50",min(c),mean(c),max(c),"0.75",min(d),mean(d),max(d),"1",0,0,0),
			nrow=5,
			ncol=4,
			byrow=TRUE)
write.table(A, file="ntwo.txt", col.names=FALSE,row.names=FALSE,sep="\t",quote=FALSE)

B = matrix(
	 c("A", mean(x[1:5]),min(x[1:5]),max(x[1:5]),"B", mean(y[1:5]),min(y[1:5]),max(y[1:5]),"C", mean(z[1:5]),min(z[1:5]),max(z[1:5])),
	 ncol=4,
	 byrow=TRUE)
write.table(B, file="nthree1.txt", col.names=FALSE,row.names=FALSE,sep="\t",quote=FALSE)


C = matrix(
	 c("A", mean(x[6:10]),min(x[6:10]),max(x[6:10]),"B", mean(y[6:10]),min(y[6:10]),max(y[6:10]),"C", mean(z[6:10]),min(z[6:10]),max(z[6:10])),
	 ncol=4,
	 byrow=TRUE)
write.table(C, file="nthree2.txt", col.names=FALSE,row.names=FALSE,sep="\t",quote=FALSE)



a <- 0
b <- 0
c <- 0
d <- 0
x <- 0
y <- 0
z <- 0
for (i in 1:10) {
filename = paste(paste("dist_unif",i,sep="_"), "txt", sep=".")
n = runif(100,0.0,1.0)
cat(n,file=filename,sep="\t")

f=n<0.25
a[i]=length(f[f==TRUE])
f=n[n>=0.25]
f=f[f<0.5]
b[i]=length(f)
f=n[n<0.75]
f=f[f>=0.50]
c[i]=length(f)
f=n[n<1]
f=f[f>=0.75]
d[i]=length(f)

g=n<=0.34
m1=length(g[g==TRUE])
g=n[n>0.34]
g=g[g<0.66]
m2=length(g)
g=n[n>=0.66]
g=g[g<=1.0]
m3=length(g)
x[i] = m1
y[i] = m2
z[i] = m3
}

A = matrix(
	 c("0.0",min(a),mean(a),max(a),"0.25",min(b),mean(b),max(b),"0.50",min(c),mean(c),max(c),"0.75",min(d),mean(d),max(d),"1",0,0,0),
	 nrow=5,
	 ncol=4,
	 byrow=TRUE)
write.table(A, file="utwo.txt", col.names=FALSE,row.names=FALSE,sep="\t",quote=FALSE)

B = matrix(
	 c("A", mean(x[1:5]),min(x[1:5]),max(x[1:5]),"B", mean(y[1:5]),min(y[1:5]),max(y[1:5]),"C", mean(z[1:5]),min(z[1:5]),max(z[1:5])),
	 ncol=4,
	 byrow=TRUE)
write.table(B, file="uthree1.txt", col.names=FALSE,row.names=FALSE,sep="\t",quote=FALSE)


C = matrix(
	 c("A",mean(x[6:10]),min(x[6:10]),max(x[6:10]),"B",mean(y[6:10]),min(y[6:10]),max(y[6:10]),"C",mean(z[6:10]),min(z[6:10]),max(z[6:10])),
	 ncol=4,
	 byrow=TRUE)
write.table(C, file="uthree2.txt", col.names=FALSE,row.names=FALSE,sep="\t",quote=FALSE)


