# Codebook ----------------------------------------------------------------

# 1. Packages -------------------------------------------------------------
pacman::p_load(tidyverse)

# 2. Load data ------------------------------------------------------------
data <- haven::read_dta("content/input/data/MOVID-IMPACT.dta")

label_browser_static(data)

## Adding scales
data$moduleA <- aggregate_and_document_scale(data %>%
                                               select(starts_with("a")))

## Codebook table
codebook_table(data)
data1 <- data

codebook_browser(data, viewer = shiny::paneViewer())
