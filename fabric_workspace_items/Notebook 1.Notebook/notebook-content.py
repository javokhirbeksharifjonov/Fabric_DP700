# Fabric notebook source

# METADATA ********************

# META {
# META   "kernel_info": {
# META     "name": "synapse_pyspark"
# META   },
# META   "dependencies": {
# META     "lakehouse": {
# META       "default_lakehouse": "92e15f2b-cd1d-4afb-b31a-c8866f1a8325",
# META       "default_lakehouse_name": "Sample_Lakehouse",
# META       "default_lakehouse_workspace_id": "05bdd748-06b4-4e16-8e7a-80a96f7ee56c",
# META       "known_lakehouses": [
# META         {
# META           "id": "92e15f2b-cd1d-4afb-b31a-c8866f1a8325"
# META         }
# META       ]
# META     }
# META   }
# META }

# MARKDOWN ********************

# # Delta table optimization

# CELL ********************

spark.sql("DESCRIBE DETAIL nyctlc").select("numFiles","sizeInBytes").show()

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

spark.sql("OPTIMIZE nyctlc")

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

spark.sql("DESCRIBE DETAIL nyctlc").select("numFiles").show()

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

# MAGIC %%pyspark
# MAGIC spark.conf.get('spark.sql.parquet.vorder.default')

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

spark.sql("OPTIMIZE nyctlc ZORDER BY (paymentType)")

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

# MAGIC %%sql
# MAGIC DESCRIBE HISTORY nyctlc

# METADATA ********************

# META {
# META   "language": "sparksql",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

df = spark.sql("SELECT * FROM Sample_Lakehouse.dbo.nyctlc")
display(df)

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

df.write.format("delta").partitionBy("tripType").mode("overwrite").saveAsTable("partitionedTable")

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

spark.sql("SELECT * FROM partitionedTable").show()

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

df_partitioned=spark.sql("SELECT * FROM partitionedTable")
display(df_partitioned)

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************


# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }
