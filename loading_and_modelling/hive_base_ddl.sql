DROP TABLE hospitals;

CREATE EXTERNAL TABLE hospitals
(
  provider_id STRING,
  hospital_name STRING,
  address STRING,
  city STRING,
  state STRING,
  zip_code STRING,
  county_name STRING,
  phone_number STRING,
  hospital_type STRING,
  hospital_ownership STRING,
  emergency_services STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde' 
WITH SERDEPROPERTIES (
  "separatorChar" = ",",
  "quoteChar"     = '"',
  "escapeChar"    = '\\'
  )
  STORED AS TEXTFILE 
LOCATION '/user/w205/exercise_1/hospitals';


drop table measures;

CREATE EXTERNAL TABLE measures
(
  measure_name STRING,
  measure_id STRING,
  measure_start_quarter STRING,
  measure_start_date STRING,
  measure_end_quarter STRING,
  measure_end_date STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde' 
WITH SERDEPROPERTIES (
  "separatorChar" = ",",
  "quoteChar"     = '"',
  "escapeChar"    = '\\'
  )
  STORED AS TEXTFILE 
LOCATION '/user/w205/exercise_1/measures';


drop table readmissions;

CREATE EXTERNAL TABLE readmissions
(
  provider_id STRING,
  hospital_name STRING,
  address STRING,
  city STRING,
  state STRING,
  zip_code STRING,
  county_name STRING,
  phone_number STRING,
  measure_name STRING,
  measure_id STRING,
  compare_to_national STRING,
  denominator STRING,
  score STRING,
  lower_estimate STRING,
  higher_estimate STRING,
  footnote STRING,
  measure_start_date STRING,
  measure_end_date STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde' 
WITH SERDEPROPERTIES (
  "separatorChar" = ",",
  "quoteChar"     = '"',
  "escapeChar"    = '\\'
  )
  STORED AS TEXTFILE 
LOCATION '/user/w205/exercise_1/readmissions';

drop table effective_care;

CREATE EXTERNAL TABLE effective_care
(
  provider_id STRING,
  hospital_name STRING,
  address STRING,
  city STRING,
  state STRING,
  zip_code STRING,
  county_name STRING,
  phone_number STRING,
  condition STRING,
  measure_id STRING,
  measure_name STRING,
  score STRING,
  sample STRING,
  footnote STRING,
  measure_start_date STRING,
  measure_end_date STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde' 
WITH SERDEPROPERTIES (
  "separatorChar" = ",",
  "quoteChar"     = '"',
  "escapeChar"    = '\\'
  )
  STORED AS TEXTFILE 
LOCATION '/user/w205/exercise_1/effective_care';

drop table surveys_responses;


CREATE EXTERNAL TABLE surveys_responses
(
  provider_id STRING,
  hospital_name STRING,
  address STRING,
  city STRING,
  state STRING,
  zip_code STRING,
  county_name STRING,
  H STRING,
  I STRING,
  J STRING,
  K STRING,
  L STRING,
  M STRING,
  N STRING,
  O STRING,
  P STRING,
  Q STRING,
  R STRING,
  S STRING,
  T STRING,
  U STRING,
  V STRING,
  W STRING,
  X STRING,
  Y STRING,
  Z STRING,
  AA STRING,
  AB STRING,
  AC STRING,
  AD STRING,
  AE STRING,
  HCAHPS_BASE_SCORE STRING,
  HCAHPS_CONSISTENCY_SCORE STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde' 
WITH SERDEPROPERTIES (
  "separatorChar" = ",",
  "quoteChar"     = '"',
  "escapeChar"    = '\\'
  )
  STORED AS TEXTFILE 
LOCATION '/user/w205/exercise_1/surveys_responses';

