library(sqldf)

#create dataframe
dataset <- data.frame(pessoa_id, data_desligamento, ativo, sexo)

#remove duplicated rows
dataset <- unique(dataset)

sub_dataset <- sqldf(
  'SELECT count(pessoa_id) FROM dataset
  WHERE data_desligamento is null OR data_desligamento > date()
  GROUP BY sexo')

plot(c(0, 1), c(0, 1), ann = F, bty = 'n', type = 'n', xaxt = 'n', yaxt = 'n')
text(x = 0.5, y = 0.5, paste("Total de Funcionários\n\n",
                             nrow(sub_dataset)), 
     cex = 1.6, col = "black")