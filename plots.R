library(ggplot2)
U = 0.0004
s = 0.01
data <- -log(dpois(seq(0,3), U/s))

theme_set(theme_gray(24))

qplot(x=seq(0,3), y=data, geom="bar", stat="identity", fill=I("white"), color=I("black")) + 
  labs(x="מס' מוטציות שליליות", y="לוג שכיחות") +
  scale_y_continuous(labels = c())