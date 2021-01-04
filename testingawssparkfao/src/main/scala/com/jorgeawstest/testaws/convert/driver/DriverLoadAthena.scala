package com.jorgeawstest.testaws.convert.driver

import com.jorgeawstest.testaws.convert.input.ReadS3
import com.jorgeawstest.testaws.convert.output.WriteS3
import com.jorgeawstest.testaws.udf.spark.ChangeLetters
import org.apache.spark.sql.SparkSession
import org.apache.spark.sql.functions.col

object DriverLoadAthena {

  lazy val spark: SparkSession = SparkSession.builder()
    .master("cluster")
    .appName("LoadAthenaMasterTable")
    .config(
      "spark.sql.shuffle.partitions",
      "1"
    ).getOrCreate()

  def main(args: Array[String]):Unit = {
    println("Inside DriverLoadAthena")
    val pathInput = args(0)
    val pathOutput = args(1)
    println("pathInput: " + pathInput)
    println("pathOutput: " + pathOutput)
    
//    val inputDF = spark.read.csv(pathInput)
//    val inDF = ReadS3.read(spark,pathInput)
//    val areacode = inputDF.select(col("Area Code"),col("Area")).distinct()
//    WriteS3.saveParquet(areacode,pathOutput + "areacode")
//    val itemcode = inputDF.select(col("Item Code"),col("Item")).distinct()
//    WriteS3.saveParquet(itemcode,pathOutput + "itemcode")
//    val elementcode = inputDF.select(col("Element Code"),col("Element")).distinct()
//    WriteS3.saveParquet(elementcode,pathOutput + "elementcode")
//    val yearcode = inputDF.select(col("Year Code"),col("Year")).distinct()
//    WriteS3.saveParquet(yearcode,pathOutput + "yearcode")
//    val unitcode = inputDF.select(col("Unit")).distinct()
//    WriteS3.saveParquet(unitcode,pathOutput + "unitcode")


  }
}
