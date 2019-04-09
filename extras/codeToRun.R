#This script is meant to create the OMOP Common Data Model DDLs for each dialect as well as the pdf of the documentation.


# Step 1: Update the file inst/sql/sql_server/OMOP CDM ddl.sql with the changes for the new version and set the below variables

  # Step 1.1: The version of the CDM you are writing. This will be used for the name of the pdf so, for example, write v5.3 as v5_3
    cdmVersion <- "v6_0"

  # Step 1.2: The location of the wiki markdown files. The default is "../../Documentation/CommonDataModel_Wiki_Files"
    mdFilesLocation <- "S:/Git/GitHub/CommonDataModel.wiki"

# Step 1.9: Generate the CSV file:
parseWiki(mdFilesLocation = mdFilesLocation,
          output_file = paste0("OMOP_CDM_",cdmVersion,".csv"))

# Step 2: Run the following code to create the DDLs for each dialect:

#writeDDL("bigquery")
#writeDDL("impala")
#writeDDL("netezza")
#writeDDL("pdw")
#writeDDL("redshift")

writeDDL("oracle",
         cdmVersion,
         "OHDSI")

writeDDL("postgresql",
         cdmVersion,
         "ohdsi")

writeDDL("sql server",
         cdmVersion,
         "ohdsi.dbo")

# Step 3: Run the following code to create the primary key constraints and index files for Oracle, Postgres, PDW and Sql Server

#writeIndex("pdw")
writeIndex("oracle",
           cdmVersion,
           "OHDSI")

writeIndex("postgresql",
           cdmVersion,
           "ohdsi")

writeIndex("sql server",
           cdmVersion,
           "ohdsi.dbo")

# Step 4: Run the following code to create primary key constraints for Netezza

#writePrimaryKeys("netezza")

# Step 5: Run the following code to create foreign key constraints for Oracle, Postgres, PDW and Sql Server

#writeConstraints("pdw")
writeConstraints("oracle",
                 cdmVersion,
                 "OHDSI")

writeConstraints("postgresql",
                 cdmVersion,
                 "ohdsi")

writeConstraints("sql server",
                 cdmVersion,
                 "ohdsi.dbo")

# step 6: Run the following code to create the pdf documentation. It will be written to the reports folder.

rmarkdown::render("reports/OMOP_CDM_PDF.Rmd",
                  output_format = "pdf_document",
                  output_file = paste0("OMOP_CDM_",cdmVersion,"test.pdf"),
                  params = list(mdFilesLocation = mdFilesLocation))
rmarkdown::render("reports/OMOP_CDM_PDF.Rmd",
                  output_format = "html_document",
                  output_file = paste0("OMOP_CDM_",cdmVersion,"test.html"),
                  params = list(mdFilesLocation = mdFilesLocation))
