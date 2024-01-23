
install.packages("janitor")
library("janitor")
install.packages("knitr")
library("knitr")
install.packages("lubridate")
library("lubridate")
install.packages("opendatatoronto")
library("opendatatoronto")
install.packages("tidyverse")
library("tidyverse")
install.packages("dplyr")
library(dplyr)

# Simulation
start_date <- as.Date("2011-01-01")
end_date <- as.Date("2024-01-01") 
civic_centers <- c("ET", "NY", "SC", "TO")

time_periods <- seq(from = start_date, to = end_date, by = "month")

simulate_licenses <- function() {
  sample(80:400, 1) 
} 

set.seed(123) 
simulated_data <- expand.grid(TIME_PERIOD = time_periods, CIVIC_CENTRE = civic_centers) %>%
  mutate(MARRIAGE_LICENSES = apply(., 1, function(x) simulate_licenses()))

head(simulated_data)

