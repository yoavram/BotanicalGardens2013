library(ggplot2)
U = 0.0004
s = 0.01

theme_set(theme_gray(24))

data <- -log(dpois(seq(0,3), U/s))
qplot(x=seq(0,3), y=data, geom="bar", stat="identity", fill=I("white"), color=I("black")) + 
  labs(x="מס' מוטציות שליליות", y="לוג שכיחות") +
  scale_y_continuous(labels = c())


fitness <- function(g) {
  return(exp(-U*(1-(1-s)^g)))
}

gens = seq(2000)
qplot(x=gens, y=sapply(gens, fitness)) + 
  labs(x="דור", y="כשירות ממוצעת באוכלוסיה") +
  scale_y_continuous(breaks = c(1, 1-U), labels=c(1,1-U))
