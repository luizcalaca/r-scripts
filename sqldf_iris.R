#dowload the iris dataset
#This code ir for running on PowerBI

library(sqldf)

#create dataframe #Selecting fields on Power Bi
dataset <- data.frame(Column1)

#remove duplicated rows
dataset <- unique(dataset)

sub_dataset <- sqldf(
  'SELECT count(Column1) FROM dataset')

plot(c(0, 1), c(0, 1), ann = F, bty = 'n', type = 'n', xaxt = 'n', yaxt = 'n')
text(x = 0.5, y = 0.5, paste("Total of Employees\n\n",
                             sub_dataset), 
     cex = 1.6, col = "black")
