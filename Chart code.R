library(tidyverse)



# 4di ---------------------------------------------------------------------

first_data <- read.csv(file.choose())

ggplot(first_data, aes(x=Variety, y=Plant.Height..14dpi.., fill= Plant.Status)) + 
  geom_boxplot()


ggsave(filename = "Plant height vs Vriety vs Status.png")


# Trial 1 -----------------------------------------------------------------

second_data <- read.csv(file.choose())
ggplot(second_data, aes(x=Variety, Plant.Height..before.inf.., fill= Variety)) +
  geom_boxplot()

ggsave(filename = "Trial 1 Height vs Variety")

ggplot(second_data, aes(x=Variety, y=Leaf.Petiole, fill= Variety)) +
  geom_boxplot()

ggsave(filename = "Trial 1 Height vs Petiole")

# Trial 2 -----------------------------------------------------------------

third_data <- read.csv(file.choose())
ggplot(third_data, aes(x=Variety, y= Plant.Height, fill= Variety)) +
  geom_boxplot()

ggsave(filename = "Trial 2 Height vs Variety")

ggplot(third_data, aes(x=Variety, y= Petiole, fill= Variety)) +
  geom_boxplot()

ggsave(filename = "Trial 2 Height vs Petiole")
