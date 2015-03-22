#P300 psychophysical test analyser       By Aness BELHAOUARI

Analyseptcsv <- function(result)
{
#  result <- read.csv(file, header = TRUE, sep = ",") 
  
  data <- result[which(as.numeric(result[,4]) == 1),]
  data <- data[which(as.numeric(data[,3]) > 0),]
  (data1 <- data[which(as.numeric(data[,2]) == as.numeric(data[,3])),])
  (data2 <- data[which(as.numeric(data[,2]) != as.numeric(data[,3])),])
  miss <- result[which(as.numeric(result[,4]) == 0),]
  miss <- miss[which(as.numeric(miss[,2]) == as.numeric(miss[,3])),]
  
  cm <- matrix(data = NA, nrow = 5, ncol = 7, byrow = FALSE,dimnames = NULL)
  i <- 0
  j <- 0
  
  for (i in 1:5)
    for (j in 1:6)
      cm[i,j] <- 0
  
  
  for (i in 1:nrow(data1))
  {
    val <- data1[i,3];
    cm[val,val] <- cm[val,val]+1
  }
  
  for (i in 1:nrow(data2))
  {
    s <- data2[i,2]
    t <- data2[i,3]
    cm[t,s] <- cm[t,s]+1
  }
  
  for (i in 1:nrow(miss))
  {
    t <- miss[i,3]
    cm[t,6] <- cm[t,6]+1 
  }
  
  # Adding a column and normalizing results
  # in lines instructed targets
  # in columns target response
  cm1 <- cm
  for (i in 1:5)
  { 
    cm[i,7] <- sum(cm[i,1:6])
    cm1[i,7] <- sum(cm1[i,1:6])
    cm1[i,1:7] <- cm1[i,1:7]/cm1[i,7]   
  }
  
  # User response time gathering data for a boxplot
  
  rt <- matrix(data = NA, nrow = 5, ncol = 3, byrow = FALSE,dimnames = NULL)
  for (i in 1:5)
    for (j in 1:3)
      rt[i,j] <- 0
  
  for (i in 1:5)
  { 
    rt[i,1] <- min(data[which(as.numeric(data[,3]) == i),5])
    rt[i,2] <- mean(data[which(as.numeric(data[,3]) == i),5])
    rt[i,3] <- max(data[which(as.numeric(data[,3]) == i),5]) 
  }
  
  # Generating a box plot
  boxplot(t(rt))
  cm1  


}