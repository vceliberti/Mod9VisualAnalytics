
library(ggplot2)

library(gridExtra)
g1 <- ggplot(educationdata, aes(x=education, y=income, col=income)) + geom_point() + geom_smooth(method = "lm") 
g2 <- ggplot(educationdata, aes(x=education, y=income, col=young)) + geom_point() + geom_smooth(method = "lm")
g3 <- ggplot(educationdata, aes(x=education, y=income, col=urban)) + geom_point() + geom_smooth(method = "lm")
grid.arrange(g1,g2,g3, nrow = 1, top = "Analysis of Education")
