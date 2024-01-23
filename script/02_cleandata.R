
library("janitor")
library("knitr")
library("lubridate")
library("opendatatoronto")
library("tidyverse")


# Clean and transform the data
toronto_marriage_clean <- toronto_marriage%>%
  # Ensure MARRIAGE_LICENSES is numeric and replace non-numeric values with NA
  mutate(MARRIAGE_LICENSES = as.numeric(MARRIAGE_LICENSES))

# Remove rows with NA
toronto_marriage_clean <- toronto_marriage_clean %>%
  dplyr::filter(!is.na(MARRIAGE_LICENSES))

head(toronto_marriage_clean)

write_csv(
  x = toronto_marriage_clean,
  file = "cleaned_toronto_marriage.csv"
) 

