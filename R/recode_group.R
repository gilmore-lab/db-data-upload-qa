recode_group <- function(df) {
  require(dplyr)
  df <- df |>
    mutate(
      group = case_match(
        group,
        "2" ~ "2nd",
        "3" ~ "3rd",
        "0" ~ "K",
        "1" ~ "1st",
        "2nd" ~ "2nd",
        "3rd" ~ "3rd",
        "1st" ~ "1st",
        "K" ~ "K"
      )
    )
  df
}