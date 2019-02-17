#Create an m x n matrix with replicate(m, rnorm(n)) with m=10
#column vectors of n=10 elements each, constructed with rnorm(n),
#which creates random normal numbers.
#Then we transform it into a dataframe (thus 10 observations of
#10 variables) and perform an algebraic operation on each
#element using a nested for loop: at each iteration, every element
#referred by the two indexes is incremented by a sinusoidal
#function, compare the vectorized and non-vectorized form of
#creating the solution and report the system time differences.

m <- rnorm(10)
m
n <- rnorm(10)
n
myMat2 <- replicate.matrix(data.frame(m, n))
View(myMat2)
system.time(
  for(i in seq(nrow(myMat2))){
    for(j in seq(ncol(myMat2))){
      print(sin(2*myMat2[i,j]))
    }
  }
)

x<- c(1,2,3,4,5,6,7,8,9,10)
y<- c(11,12,13,14,15,16,17,18,19,20)
myMat3 <-replicate.matrix(data.frame(x, y))
system.time(
  for(k in seq(nrow(myMat3))){
    for(l in seq(ncol(myMat3))){
      print(sin(2*myMat2[k,l]))
    }
  }
)



