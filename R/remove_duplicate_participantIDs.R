remove_duplicate_participantIDs <- function(df) {
  suppressPackageStartupMessages(require(dplyr))
  
  df |>
    group_by(participantID) |>
    distinct()
}