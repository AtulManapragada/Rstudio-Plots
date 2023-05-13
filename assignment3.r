library(tidyverse)
library(readr)
getwd()
setwd("/Users/atulmanapragada/Documents/courses/second year courses/coding in health analytics")
assignment_3<-read.csv("bmd_BRBZ_2w_entrez.txt", header = TRUE, sep = ",")
df_data<-data.frame(assignment_3)
View(df_data)
data_header <- df_data                         
colnames(data_header) <- data[50, ]          
data_header     
view(data_header)
#Question 1
brbzdata <- read.delim("~/Documents/courses/second year courses/coding in health analytics/bmd_BRBZ_2w_entrez.txt", header=FALSE, comment.char="#")
View(brbzdata)
#Question1- (ii)
brbzdata.parsed<- parse(brbzdata)
view(brbzdata.parsed)
brbzdata.doses <- assign_3[-c(1), ]
view(brbzdata.doses)
mat.t<-t(brbzdata.parsed)
brbzdata.transpose <- data.frame(mat.t(13893:31, ncol = 31))
dim(brbzdata.parsed)
#Question(iii)
brbzdata[c(2:nrow(brbzdata)),1] 
#question(iv)
library(dplyr)
summarise_all(brbzdata,funs(n))
#Question b (i)
library(tidyverse)
library(ggplot2)
brbzdata.parsed.samples <- melt(brbzdata.parsed, id="GeneName")
plot_1<-ggplot(data = brbzdata.parsed.samples, mapping = aes(x = expressionvalue, y = Sampleid)) +
geom_boxplot()
print(plot_1)
#question(ii)
brbzdata_log<-log2(brbzdata)
plot_2<-ggplot(data = brbzdata_log,mapping = aes(x = expressionvalue, y = Sampleid)) +
  geom_boxplot()
print(plot_2)
#question(iii)
brbzdata_density <- density(DOSE_100$DOSE_25)
plot(brbzdata_density)



