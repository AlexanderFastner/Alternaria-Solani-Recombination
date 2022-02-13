#NOTE remove # from line 3 in all files before running !!!!!

#Loading
library(ggplot2)
#legibility
options(scipen=999)  # turn off scientific notation like 1e+06
#data
data<-read.table(file = '/Users/alex/Desktop/denbiData/LDhelmet/ldhelmetchr10rmbelgian/LDHelmetoutputRMbelgian10.txt', skip = 2, header = TRUE)

# Open a pdf file
pdf("ldhelmetRchr10rmbelgian.pdf") 
                
g<-ggplot(data, aes(x = left_snp, y = mean, label = left_snp)) + labs(x = "Positions", y = expression(rho*"/bp")) +
  geom_line(color = "Dark green") +
  geom_text(aes(label=ifelse(mean>1.0,as.character(left_snp),'')),hjust=0,vjust=0) +
  ggtitle("chromosome 10 rm belgian") +
  theme(
    plot.title = element_text(color="blue", size=26, face="bold", hjust = 0.5),
    axis.title.x = element_text(size=20, face="bold"),
    axis.title.y = element_text(size=20, face="bold"))
plot(g)
# Close the pdf file
dev.off() 

