#This script is meant to create the OMOP Common Data Model DDLs for each dialect as well as the pdf of the documentation.

# Step 1-2 from README: Create new csv files "..._Field_Level.csv" and "..._Table_Level.csv" in inst/csv for the new version and make changes to the files reflecting
# the new CDM versions. Set the below variable to indicate the version of the cdm you are creating. This will be used for the name of the pdf so, for
# example, write v5.3 as v5_3.

  cdmVersion <- "v5_3_1"

# Step 3: After creating the csv files for the new version, create the sql server DDL from the file

    s <- CdmDdlBase::createDdlFromFile(cdmTableCsvLoc = "inst/csv/OMOP_CDMv5.3.1_Table_Level.csv",
                           cdmFieldCsvLoc = "inst/csv/OMOP_CDMv5.3.1_Field_Level.csv")

    # Use SqlRender to save the file

    SqlRender::writeSql(s, targetFile = paste0("inst/sql/sql_server/OMOP CDM ddl ", cdmVersion, " ", Sys.Date(), ".sql"))

# Step 4: Run the following code to create the DDLs for each dialect:

writeDDL("oracle",
         cdmVersion,
         "OHDSI")

writeDDL("postgresql",
         cdmVersion,
         "ohdsi")

writeDDL("sql server",
         cdmVersion,
         "ohdsi.dbo")

# Step 3: Run the following code to create the primary key constraints and index files for Oracle, Postgres, and Sql Server

writeIndex("oracle",
           cdmVersion,
           "OHDSI")

writeIndex("postgresql",
           cdmVersion,
           "ohdsi")

writeIndex("sql server",
           cdmVersion,
           "ohdsi.dbo")

# Step 4: Run the following code to create foreign key constraints for Oracle, Postgres, and Sql Server


writeConstraints("oracle",
                 cdmVersion,
                 "OHDSI")

writeConstraints("postgresql",
                 cdmVersion,
                 "ohdsi")

writeConstraints("sql server",
                 cdmVersion,
                 "ohdsi.dbo")

# Step 5: After testing the files for Oracle, Postgres, and Sql Server run the following to create the files for the other dialects:

writeDDL("bigquery",
         cdmVersion,
         "ohdsi")
writeDDL("impala",
         cdmVersion,
         "ohdsi")
writeDDL("netezza",
         cdmVersion,
         "ohdsi")
writeDDL("pdw",
         cdmVersion,
         "ohdsi")
writeDDL("redshift",
         cdmVersion,
         "ohdsi")

writeIndex("pdw",
           cdmVersion,
           "ohdsi")

writePrimaryKeys("netezza",
                 cdmVersion,
                 "ohdsi")

writeConstraints("pdw",
                 cdmVersion,
                 "ohdsi")


# step 6: Run the following code to create the pdf documentation. It will be written to the reports folder. Use knit with pagedown
pagedown::chrome_print("rmd/cdm531.Rmd") # create a comprehensive rmd with background, conventions, etc like https://stackoverflow.com/questions/25824795/how-to-combine-two-rmarkdown-rmd-files-into-a-single-output


# Step 6: After updating any of the .Rmd files, render the site following directions in SiteMaintenance.R, then move the files to the CommonDataModel directory

newdir <- "C:/Git/Github/CommonDataModel/docs"
currentdir <- paste0(getwd(),"/docs/")


  file.copy(currentdir, newdir, recursive = TRUE, overwrite = TRUE)



