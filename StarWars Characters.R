data()
library(dplyr)

data(starwars)
view(starwars)

ggplot(data = starwars, aes(x = height, y = mass)) +
  geom_point()
