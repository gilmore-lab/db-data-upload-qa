file_name_2_df <- function(file_list) {
  
  extract_one_fn <- function(x) {
    grade <- stringr::str_extract(x, "^[K123]?")
    genre <- stringr::str_extract(x, "E|N")
    task <- stringr::str_extract(x, "G|R")
    modality <- stringr::str_extract(x, "O|W")
    linked_transcript_files <- stringr::str_extract(x, "[A-Z]{2}_") |>
      stringr::str_remove("_")
    part_id <- stringr::str_extract(x, "[0-9]{5}")
    calp <- stringr::str_extract(x, "[0-9]{1}\\.[0-9]{1}")
    mo_yr <- stringr::str_extract(x, "_[0-9]{4}\\.") |>
      stringr::str_remove("_") |>
      stringr::str_remove("\\.")
    file_ext <- x |>
      tolower() |>
      tools::file_ext()
    
    data.frame(part_id = part_id, 
               genre = genre,
               task = task,
               modality = modality,
               calp = calp)
  }
  
  purrr::map(file_list, extract_one_fn) |>
    purrr::list_rbind()
}