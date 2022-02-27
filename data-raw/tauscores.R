## code to prepare `tauscores` dataset goes here

library(tidyverse)
library(readxl)

source_file <- "data-raw/12864_2008_2619_MOESM1_ESM.xls"

usethis::use_data(tauscores, overwrite = TRUE)
