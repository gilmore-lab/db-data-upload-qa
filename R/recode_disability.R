recode_disability <- function(df) {
  require(dplyr)
  df <- df |>
    mutate(disability = as.character(disability)) |>
    mutate(
      disability = case_match(
        disability, "0" ~ "none",
        "1" ~ "IEP"
      )
    )
  df
}