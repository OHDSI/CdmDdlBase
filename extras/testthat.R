library(DatabaseConnector)

oracleConnect <- DatabaseConnector::createConnectionDetails(dbms = "oracle",
                                                            user = Sys.getenv("CDM5_ORACLE_USER"),
                                                            password = Sys.getenv("CDM5_ORACLE_PASSWORD"),
                                                            server = Sys.getenv("CDM5_ORACLE_SERVER"),
                                                            schema = Sys.getenv("CDM5_ORACLE_CDM_SCHEMA"))

conn <- DatabaseConnector::connect(connectionDetails = oracleConnect)

sql <- SqlRender::readSql(paste0("output/oracle/OMOP CDM oracle ", cdmVersion," ddl.sql"))

DatabaseConnector::executeSql(connection = conn,
                              sql = sql,
                              progressBar = TRUE
                              )

sql <- SqlRender::readSql(paste0("output/oracle/oracle testCleanUp ", cdmVersion,".sql"))

DatabaseConnector::executeSql(connection = conn,
                              sql = sql,
                              progressBar = TRUE
)


DatabaseConnector::disconnect(conn)
