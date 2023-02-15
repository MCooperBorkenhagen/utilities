
# Some tools for exploratory data analysis


library(tidyverse)
library(janitor)
library(skimr)

# Credit to John Curtin and his lab at UW-Madison for sharing with me their
# great inventory of EDA tools.

# Provide summary statistics for cleaning EDA
skim_some <- skim_with(numeric = sfl(mean = NULL, sd = NULL, p25 = NULL, p50 = NULL, p75 = NULL, hist = NULL))

# Provides summary statistics for modeling EDA
skew_na <- partial(e1071::skewness, na.rm = TRUE)
kurt_na <- partial(e1071::kurtosis, na.rm = TRUE)
skim_all <- skim_with(numeric = sfl(skew = skew_na, kurtosis = kurt_na))