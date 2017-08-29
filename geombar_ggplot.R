library(ggplot2)
df <- mpg

pl <- ggplot(df, aes(x=class))

print(pl + geom_bar(aes(fill=drv), position="dodge"))
