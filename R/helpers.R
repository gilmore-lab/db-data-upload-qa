
fn <- "3_EGOAF_00001_3.5_0719.MP3"

grade <- stringr::str_extract(fn, "^[K123]?")

genre <- stringr::str_extract(fn, "E|N")

task <- stringr::str_extract(fn, "G|R")

modality <- stringr::str_extract(fn, "O|W")

linked_transcript_files <- stringr::str_extract(fn, "[A-Z]{2}_") |>
  stringr::str_remove("_")

part_id <- stringr::str_extract(fn, "[0-9]{5}")

calp <- stringr::str_extract(fn, "[0-9]{1}\\.[0-9]{1}")

mo_yr <- stringr::str_extract(fn, "_[0-9]{4}\\.") |>
  stringr::str_remove("_") |>
  stringr::str_remove("\\.")

file_ext <- fn |>
  tolower() |>
  tools::file_ext()

data.frame(part_id = part_id, 
           genre = genre,
           task = task,
           modality = modality,
           calp = calp)

file_name_2_df <- function(fn) {
  grade <- stringr::str_extract(fn, "^[K123]?")
  
  genre <- stringr::str_extract(fn, "E|N")
  
  task <- stringr::str_extract(fn, "G|R")
  
  modality <- stringr::str_extract(fn, "O|W")
  
  linked_transcript_files <- stringr::str_extract(fn, "[A-Z]{2}_") |>
    stringr::str_remove("_")
  
  part_id <- stringr::str_extract(fn, "[0-9]{5}")
  
  calp <- stringr::str_extract(fn, "[0-9]{1}\\.[0-9]{1}")
  
  mo_yr <- stringr::str_extract(fn, "_[0-9]{4}\\.") |>
    stringr::str_remove("_") |>
    stringr::str_remove("\\.")
  
  file_ext <- fn |>
    tolower() |>
    tools::file_ext()
  
  data.frame(part_id = part_id, 
             genre = genre,
             task = task,
             modality = modality,
             calp = calp)
}