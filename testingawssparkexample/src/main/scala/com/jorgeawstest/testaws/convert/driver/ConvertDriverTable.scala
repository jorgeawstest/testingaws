package com.jorgeawstest.testaws.convert.driver

import com.jorgeawstest.testaws.convert.input.ReadTable
import com.jorgeawstest.testaws.convert.output.WriteTable
import com.jorgeawstest.testaws.convert.pipeline.ConvertPipeline
import com.jorgeawstest.testaws.convert.input.ReadS3
import com.jorgeawstest.testaws.convert.output.WriteTable
import org.apache.spark.sql.SparkSession

object ConvertDriverTable {
  lazy val spark: SparkSession = SparkSession.builder()
    .master("local")
    .appName("Convert")
    .config(
      "spark.sql.shuffle.partitions",
      "1"
    ).getOrCreate()

  def main(args: Array[String]):Unit = {
    println("Inside ConvertDriver")
    val tableInput = args(0)
    val tableOutput = args(1)
    println("tableInput: " + tableInput)
    println("tableOutput: " + tableOutput)
    val inputDF = ReadTable.read(spark,tableInput)
    val outDF = ConvertPipeline.run(inputDF)
    WriteTable.save(outDF,tableOutput)

  }
}
