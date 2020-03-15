```{r}
setwd("./test/")
list <- list.files(path = ".", pattern = "*.txt")

library(tidyverse)

# The first methods
purrr::map_df(list, readr::read_table, .id = "id")

# The second methods
sapply(list, read.delim) %>% 
  bind_rows(.id = "id") 

```
