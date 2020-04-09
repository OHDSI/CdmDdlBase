---
title: "Readme"
output: 
    html_document:
        toc: TRUE
        toc_float: TRUE
---

# How to Update the CDM 

**NOTE** This information is for the maintainers of the CDM as it is best for all information to be in one place. If you want to suggest an update or addition to the OMOP CDM please visit the [CommonDataModel repo](https://github.com/OHDSI/CommonDataModel/issues). The instructions contained herein are meant to describe the process by which new versions of the CDM are produced, should it need to be replicated in the future. These steps are also enumerated in `extras/codeToRun.R`.

Typically, new CDM versions and updates are decided by the CDM working group (details to join meetings on [homepage](https://ohdsi.github.io/CommonDataModel/)). These changes are tracked as issues in the [github repo](https://github.com/OHDSI/CommonDataModel/issues). Once the working group decides which changes make up a version, all the corresponding issues should be tagged with a version number e.g. v6.1. 

## Step 0
All the issues for the new CDM version should be moved to the [CdmDdlBase repo](https://github.com/OHDSI/CdmDdlBase). This is a little clunky but unfortunately there is not a better way to do it since the updates need to be made in CdmDdlBase rather than to the CommonDataModel repo. 

## Step 1
After moving the issues over, copy the csv files of the most recent CDM version in the inst/csv folder of the CdmDdlBase package. For each CDM version represented in CdmDdlBase there should be three csv files. For example, CDM v5.3.1 has csv files "OMOP_CDMv5.3.1_Concept_Level", "OMOP_CDMv5.3.1_Field_Level", "OMOP_CDMv5.3.1_Table_Level" in the inst/csv folder. These files serve multiple functions; they serve as the basis for the CDM DDL, CDM documentation, and Data Quality Dashboard (DQD). You can read more about the DQD [here](https://ohdsi.github.io/DataQualityDashboard/index.html).

## Step 2
Once the csv files from the most recent CDM version are copied, rename them to the new CDM version. These files can now be updated with the changes and additions for the new CDM version. If a new table should be added, add a line to the Table_Level.csv with the table name and description and list it as part of the CDM schema. The remaining columns are quality checks that can be run. Details [here](https://ohdsi.github.io/DataQualityDashboard/index.html) on what those are. After adding any tables, make any changes or additions to CDM fields in the Field_Level.csv. The first few columns are meant to mimic how a DDL is structured which is how it will eventually be generated. A yes in the field isRequired indicates a NOT NULL constraint and the datatype field should be filled in exactly how it would look in the DDL. Any additions or changes should also be reflected in the userGuidance and etlConventions fields, which are the basis for the documentation. **DO NOT MAKE ANY CHANGES IN THE DDL ITSELF**. The structure is set up in such a way that the csv files are the ground truth. If changes are made in the DDL instead of the csv files then the DDL will be out of sync with the documentation and the DQD. 

## Step 3
Once all changes are made the csvs, run the `createDdlFromFile` function, setting the parameters `cdmTableCsvLoc` and `cdmFieldCsLoc` to the locations of the csv files created in step 3. For example, the `cdmTableCsvLoc` for cdm v5.3.1 is "inst/csv/OMOP_CDMv5.3.1_Table_Level.csv". After running the function, save the resulting object as a sql file using the following:

```
  SqlRender::writeSql(s, targetFile = paste0("inst/sql/sql_server/OMOP CDM ddl ", cdmVersion, " ", Sys.Date(), ".sql"))
```
## Step 4 
Use the`writeDDL` function to tranlate the sql script created in the step above into oracle, postgres, and sql server dialects. 
