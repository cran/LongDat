## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  message = FALSE,
  warning = FALSE,
  rmarkdown.html_vignette.check_title = FALSE
)

## ----message=FALSE------------------------------------------------------------
# Load the packages
library(LongDat)
library(tidyverse)
library(kableExtra)

## ----message=FALSE, tidy=TRUE, tidy.opts=list(width.cutoff=80)----------------
# Read in the data frame. LongDat_cont_master_table is already lazily loaded.
master <- LongDat_cont_master_table
master %>%
  kableExtra::kbl() %>%
  kableExtra::kable_paper(bootstrap_options = "responsive", font_size = 12) %>% 
  kableExtra::scroll_box(width = "700px", height = "200px")

## ----message=FALSE, tidy=TRUE, tidy.opts=list(width.cutoff=80)----------------
# Read in the data frame. LongDat_cont_metadata_table is already lazily loaded.
metadata <- LongDat_cont_metadata_table
metadata %>%
  kableExtra::kbl() %>%
  kableExtra::kable_paper(bootstrap_options = "responsive", font_size = 12) %>% 
  kableExtra::scroll_box(width = "700px", height = "200px")

## ----message=FALSE, tidy=TRUE, tidy.opts=list(width.cutoff=80)----------------
# Read in the data frame. LongDat_cont_feature_table is already lazily loaded.
feature <- LongDat_cont_feature_table
feature %>%
  kableExtra::kbl() %>%
  kableExtra::kable_paper(bootstrap_options = "responsive", font_size = 12) %>% 
  kableExtra::scroll_box(width = "700px", height = "200px")

## ----message=FALSE, tidy=TRUE, tidy.opts=list(width.cutoff=80)----------------
master_created <- make_master_table(
metadata_table = LongDat_cont_metadata_table,
feature_table = LongDat_cont_feature_table,
sample_ID = "Sample_ID",
individual = "Individual")

master_created %>%
  kableExtra::kbl() %>%
  kableExtra::kable_paper(bootstrap_options = "responsive", font_size = 12) %>% 
  kableExtra::scroll_box(width = "700px", height = "200px")

## ----message=FALSE, tidy=TRUE, tidy.opts=list(width.cutoff=80)----------------
# Run longdat_cont() on LongDat_cont_master_table
set.seed(100)
test_cont <- longdat_cont(input = LongDat_cont_master_table,
data_type = "count",
test_var = "Day",
variable_col = 7,
fac_var = c(1, 3))

## ----message=FALSE, tidy=TRUE, tidy.opts=list(width.cutoff=80)----------------
# The first dataframe in the list is the result table
result_table <- test_cont[[1]]
result_table %>%
  kableExtra::kbl() %>%
  kableExtra::kable_paper(bootstrap_options = "responsive", font_size = 12, position = "center") %>% 
  kableExtra::scroll_box(width = "700px")

## ----message=FALSE, tidy=TRUE, tidy.opts=list(width.cutoff=80)----------------
# The second dataframe in the list is the covariate table
covariate_table <- test_cont[[2]]
covariate_table %>%
  kableExtra::kbl() %>%
  kableExtra::kable_paper(bootstrap_options = "responsive", font_size = 12, position = "center") %>% 
  kableExtra::scroll_box(width = "700px")

## ----message=FALSE, tidy=TRUE, tidy.opts=list(width.cutoff=80)----------------
test_plot <- cuneiform_plot(result_table = test_cont[[1]],
                            title_size = 15)

## ----fig.asp = 0.6, fig.width = 8, out.width = "80%", dpi = 600---------------
test_plot

