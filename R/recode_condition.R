recode_condition <- function(df) {
  require(dplyr)
  df <- df |>
    mutate(condition = as.character(condition)) |>
    mutate(
      condition = case_match(
        condition,
        "0" ~ "written",
        "1" ~ "oral",
        "written" ~ "written",
        "oral" ~ "oral"
      )
    )
  df
}