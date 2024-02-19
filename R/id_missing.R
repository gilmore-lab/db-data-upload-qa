id_missing <- function(cond_id = "NGO", age_grp = "K")
{
  cond_dir <-
    paste0("~/Documents/spencer-curation/Databrary ", cond_id, "/")
  cond_age <- paste0(age_grp, "_", cond_id)
  list.files(cond_dir, pattern = cond_age) -> source
  df_source <- as.data.frame(source)
  colnames(df_source)[1] <- "name"
  
  materials <- str_subset(metadata.list, cond_age)
  materials <- unique(materials)
  
  materials.df <- as.data.frame(materials)
  colnames(materials.df)[1] <- "name"
  
  # - means On OneDrive/Databrary, NOT in .csv file
  # + means in .csv file, NOT on OneDrive/Databrary
  
  compare_df(materials.df, df_source, c("name"), stop_on_error = FALSE)
}