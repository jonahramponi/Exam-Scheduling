library(tidyverse) 
library(factoextra)

data <- read.csv("C:\\Users\\jonah\\Desktop\\Y5Diss\\Exam-Scheduling\\Implementation\\Data\\Toronto\\Processed\\conflicts_version2_ear-f-83.csv", header=T)
data[is.na(data)] <- 0


fviz_nbclust(data, kmeans, method = "gap_stat", k.max = 50) + theme_minimal() + ggtitle("the Elbow Method")
