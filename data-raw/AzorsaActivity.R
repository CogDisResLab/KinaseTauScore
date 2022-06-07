## code to prepare `tauscores` dataset goes here

library(tidyverse)
library(readxl)

source_file <- "data-raw/12864_2008_2619_MOESM1_ESM.xls"

AzorsaActivity <- read_excel(source_file, range = "A2:H1143") |>
  separate(`Well Contents`,
           into = c("Kinase", "siRNA"),
           sep = "\\s") |>
  rename(
    AvgCells = `Average Cell Count`,
    total_tau_r1 = `Total Tau`,
    total_tau_r2 = `Total Tau2`,
    total_tau_r3 = `Total Tau3`,
    phospho_tau_r1 = pTau,
    phospho_tau_r2 = pTau2,
    phospho_tau_r3 = pTau3
  ) |>
  pivot_longer(cols = c(starts_with("phospho"), starts_with("total")),
               values_to = "Value") |>
  mutate(
    Run = case_when(
      str_extract(name, "r\\d") == "r1" ~ "run1",
      str_extract(name, "r\\d") == "r2" ~ "run2",
      str_extract(name, "r\\d") == "r3" ~ "run3",
      TRUE ~ NA_character_
    ),
    siRNA = case_when(
      siRNA == "s1" ~ "siRNA_1",
      siRNA == "s2" ~ "siRNA_2",
      TRUE ~ NA_character_
    ),
    Measurement = case_when(
      str_detect(name, "total") ~ "total_tau",
      str_detect(name, "phospho") ~ "phospho_tau"
    )
  ) |>
  select(Kinase, siRNA, Run, Measurement, AvgCells, Value) |>
  pivot_wider(names_from = "Measurement", values_from = "Value")

usethis::use_data(AzorsaActivity, overwrite = TRUE)
