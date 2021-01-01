currentdir=$(dirname "$0")

tableInput="s3://testingaws-faostat/inputdata/data/Production_Crops_E_All_Data_(Normalized).zip/Production_Crops_E_All_Data_(Normalized).csv"
tableOutput="s3://testingaws-faostat/outputdata/parquet/Production_Crops_E_All_Data/"

spark-submit --verbose --master yarn-client \
--jars testawssparkfao-1.0-SNAPSHOT.jar,scala-library-2.12.2.jar \
--class com.jorgeawstest.testaws.convert.driver.DriverLoadAthena \
--jars testawssparkfao-1.0-SNAPSHOT.jar,scala-library-2.12.2.jar \
testawssparkfao-1.0-SNAPSHOT.jar \
${tableInput} \
${tableOutput}

