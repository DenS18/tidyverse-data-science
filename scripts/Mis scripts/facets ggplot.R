
# Los facets de ggplot - 16 de enero de 2020

library(tidyverse)
#tidyverse 1.3.0 --
#<U+2713> ggplot2 3.2.1     <U+2713> purrr   0.3.3
#<U+2713> tibble  2.1.3     <U+2713> dplyr   0.8.3
#<U+2713> tidyr   1.0.0     <U+2713> stringr 1.4.0
#<U+2713> readr   1.3.1     <U+2713> forcats 0.4.0


##FACETS
# facet_wrap(~<FORMULA_VARIABLE>): La variable debe ser discreta

# esto es solo para una sola variable (en el ejemplo la variable "class")
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_wrap(~class, nrow = 2)

# para dos variables
# facet_grid(<FORMULA_VARIABLE1>~<FORMULA VARIABLE2>)

  ggplot(data = mpg) +
    geom_point(mapping = aes(x = displ, y = hwy)) +
    facet_grid(drv~cyl)

#facet automatico 
  ggplot(data = mpg) +
    geom_point(mapping = aes(x = displ, y = hwy)) +
    facet_grid(.~cyl)

#ejemplo de facet con variable continua
  ggplot(data = mpg) +
    geom_point(mapping = aes(x = displ, y = hwy)) +
    facet_wrap(~cty, nrow = 2)
#no recomendable
  
  