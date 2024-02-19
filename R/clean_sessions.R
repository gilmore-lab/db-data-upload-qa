clean_sessions <- function(csv_fn) {
  stopifnot(is.character(csv_fn))
  stopifnot(dir.exists(csf_fn))
  
  df <- readr::read_csv(csv_fn)
  df |>
    recode_group() |>
    recode_condition() |>
    dplyr::arrange(name) |>
    readr::write(file = csv_fn)
  
  remove_NAs(csv_fn)
}