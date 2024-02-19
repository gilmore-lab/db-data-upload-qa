remove_NAs <- function(csv_fn) {
  stopifnot(is.character(csv_fn))
  stopifnot(file.exists(csv_fn))
  require(xfun)
  gsub_file(csv_fn, "NA", "")
}