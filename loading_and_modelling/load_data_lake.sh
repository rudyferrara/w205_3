tail -n +2 "Hospital General Information.csv" >hospitals.csv
tail -n +2 "Measure Dates.csv" >measures.csv
tail -n +2 "Readmissions and Deaths - Hospital.csv" >readmissions.csv
tail -n +2 "Timely and Effective Care - Hospital.csv" >effective_care.csv
tail -n +2 "hvbp_hcahps_05_28_2015.csv" >surveys_responses.csv

rm "Hospital General Information.csv"
rm "Measure Dates.csv"
rm "Readmissions and Deaths - Hospital.csv"
rm "Timely and Effective Care - Hospital.csv"
rm "hvbp_hcahps_05_28_2015.csv"

hdfs dfs -mkdir /user/w205/exercise_1

hdfs dfs -mkdir /user/w205/exercise_1/hospitals
hdfs dfs -mkdir /user/w205/exercise_1/measures
hdfs dfs -mkdir /user/w205/exercise_1/readmissions
hdfs dfs -mkdir /user/w205/exercise_1/effective_care
hdfs dfs -mkdir /user/w205/exercise_1/surveys_responses

hdfs dfs -put hospitals.csv /user/w205/exercise_1/hospitals
hdfs dfs -put measures.csv /user/w205/exercise_1/measures
hdfs dfs -put readmissions.csv /user/w205/exercise_1/readmissions
hdfs dfs -put effective_care.csv /user/w205/exercise_1/effective_care
hdfs dfs -put surveys_responses.csv /user/w205/exercise_1/surveys_responses


