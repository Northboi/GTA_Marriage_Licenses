#### Acquire ####
toronto_marriage <-
  # Each package is associated with a unique id  found in the "For 
  # Developers" tab of the relevant page from Open Data Toronto
  # https://open.toronto.ca/dataset/marriage-licence-statistics/
  list_package_resources("e28bc818-43d5-43f7-b5d9-bdfb4eda5feb") |>
  # Within that package, we are interested in the only dataset in it
  dplyr::filter(name == 
                  "Marriage Licence Statistics Data.csv") |>
  # Having reduced the dataset to one row we can get the resource
  get_resource()

write_csv(
  x = toronto_marriage,
  file = "toronto_marriage.csv"
)

head(toronto_marriage)

