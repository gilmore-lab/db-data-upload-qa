# Databrary QA

- QA comparing files from source (computer) to files on Databrary
- QA comparing files from source to files in the metadata spreadsheet
- Create rows on spreadsheet for files on Databrary

## Compare source to Databrary

use db-qa.Rmd


## Compare source to spreadsheet

use qa-files-metadata.Rmd


## Create rows on spreadsheet for files on Databrary

1. Import excel file (.csv) of metadata on Databrary
clean excel file
- tidy column names ()
- lang_home = home
-
- Condition Modality = modality = ow
- Grade = grade K123
- CALP = calp 
- Task = task
- Genre = genre
-

File = grade_genre,task,oral/written,,,_PIDwLSfirst5digits_calp_monthdayDOE

- Transform 1/0 to letters

left join

id,0000, letter index 