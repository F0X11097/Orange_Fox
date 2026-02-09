library(palmerpenguins)
data("penguins")
view(penguins)

library(tidyverse)
library(palmerpenguins)

#Function that creates a Plot for any species found in the 
#dataset with Bill length (BL) against body mass (BM)
penguin_BL_BM <- function(.data, species){
  .data |>
    filter(species == {{species}}) |>
    ggplot(aes(x = body_mass_g, y = bill_length_mm)) +
    geom_point() +
    geom_smooth(method = "lm") +
    labs(x = "Body mass g", y = "Bill length mm", title = {{species}})
}

penguin_BL_BM(penguins, "Gentoo")

penguin_BL_BM(penguins, "Adelie")

#Function that creates a Plot for any species found in the 
#dataset with bill_depth (BL) against body mass (BM)
penguin_BL_BM <- function(.data, species){
  .data |>
    filter(species == {{species}}) |>
    ggplot(aes(x = body_mass_g, y = bill_length_mm)) +
    geom_point() +
    geom_smooth(method = "lm") +
    labs(x = "Body mass g", y = "Bill length mm", title = {{species}})