Rudolph Ferrara W205 Exercise 1
I was struggling with github and couldn't get my files in on time. Either I was doing it wrong, or something has to be set up on the machine to access it.  I also had trouble from windows and ended up creating a new repository (w205_3 instead of w205) and uploading files from the github web page. I did have the work done before midnight Hawaii time I just couldn't get the files submitted.  It did let me upload from the web page after creating a new repository.


1) Run (got to the loading_and modelling directory).

cd loading_and_modelling

2) Copy the following data files to loading_and_modeling:

Hospital General Information.csv
Measure Dates.csv
Readmissions and Deaths - Hospital.csv
Timely and Effective Care - Hospital.csv
hvbp_hcahps_05_28_2015.csv

3) Run load_data_lake.sh

4) run hive_base_ddl.sql using "hive -f hive_base_ddl.sql"

5) cd ../transforming

6) Run:

hive -f e_hospitals.sql
hive -f e_procedures.sql
hive -f e_survey_results.sql

7) 

cd ../investigations/best_hospitals
hive -f best_hospitals.sql
cd ../best_states
hive -f best_states.sql
cd ../hospital_variability
hive -f hospital_variability.sql
cd ../hospitals_and_patients
hive -f hospitals_and_patients.sql

---------------------------------------------------

[w205@ip-10-144-108-25 gittest2]$ cd w205
[w205@ip-10-144-108-25 w205]$ mkdir exercise_1
[w205@ip-10-144-108-25 w205]$ cd exercise_1
[w205@ip-10-144-108-25 exercise_1]$ pwd
/home/w205/gittest2/w205/exercise_1
[w205@ip-10-144-108-25 exercise_1]$ ls
ER_Diagram.png  hive_base_ddl.sql  load_data_lake.sh
[w205@ip-10-144-108-25 exercise_1]$ pwd
/home/w205/gittest2/w205/exercise_1
[w205@ip-10-144-108-25 exercise_1]$ ls
ER_Diagram.png     investigations     transforming
hive_base_ddl.sql  load_data_lake.sh
[w205@ip-10-144-108-25 exercise_1]$ git add .
[w205@ip-10-144-108-25 exercise_1]$ git commit -m "First commit"
[master (root-commit) 29d2b74] First commit
 Committer: w205 <w205@ip-10-144-108-25.ec2.internal>
Your name and email address were configured automatically based
on your username and hostname. Please check that they are accurate.
You can suppress this message by setting them explicitly:

    git config --global user.name "Your Name"
    git config --global user.email you@example.com

If the identity used for this commit is wrong, you can fix it with:

    git commit --amend --author='Your Name <you@example.com>'

 14 files changed, 272 insertions(+), 0 deletions(-)
 create mode 100644 exercise_1/ER_Diagram.png
 create mode 100644 exercise_1/hive_base_ddl.sql
 create mode 100644 exercise_1/investigations/best_hospitals/best_hospitals.sql
 create mode 100644 exercise_1/investigations/best_hospitals/best_hospitals.txt
 create mode 100644 exercise_1/investigations/best_states/best_states.sql
 create mode 100644 exercise_1/investigations/best_states/best_states.txt
 create mode 100644 exercise_1/investigations/hospital_variability/hospital_variability.sql
 create mode 100644 exercise_1/investigations/hospital_variability/hospital_variability.txt
 create mode 100644 exercise_1/investigations/hospitals_and_patients/hospitals_and_patients.sql
 create mode 100644 exercise_1/investigations/hospitals_and_patients/hospitals_and_patients.txt
 create mode 100755 exercise_1/load_data_lake.sh
 create mode 100644 exercise_1/transforming/e_hospitals.sql
 create mode 100644 exercise_1/transforming/e_procedures.sql
 create mode 100644 exercise_1/transforming/e_survey_results.sql
[w205@ip-10-144-108-25 exercise_1]$ git remote add origin https://github.com/rudyferrara/w205.git
fatal: remote origin already exists.
[w205@ip-10-144-108-25 exercise_1]$ git push -u origin master
error: The requested URL returned error: 403 Forbidden while accessing https://github.com/rudyferrara/w205.git/info/refs

fatal: HTTP request failed
[w205@ip-10-144-108-25 exercise_1]$ cd ..
[w205@ip-10-144-108-25 w205]$ git push -u origin master
error: The requested URL returned error: 403 Forbidden while accessing https://github.com/rudyferrara/w205.git/info/refs

fatal: HTTP request failed
[w205@ip-10-144-108-25 w205]$ git remote add origin https://github.com/rudyferrara/w205.git
fatal: remote origin already exists.
[w205@ip-10-144-108-25 w205]$ git remote add origin https://github.com/rudyferrara/w205.git
fatal: remote origin already exists.
[w205@ip-10-144-108-25 w205]$ git remote add origin https://github.com/rudyferrara/w205.git^C
[w205@ip-10-144-108-25 w205]$ pwd
/home/w205/gittest2/w205
[w205@ip-10-144-108-25 w205]$ cd ..
[w205@ip-10-144-108-25 gittest2]$ git remote add origin https://github.com/rudyferrara/w205.git
fatal: Not a git repository (or any of the parent directories): .git
[w205@ip-10-144-108-25 gittest2]$ ls
w205
[w205@ip-10-144-108-25 gittest2]$ git remote add origin https://github.com/rudyferrara/w205.git^C
[w205@ip-10-144-108-25 gittest2]$ echo "zzzz" >> README.md
[w205@ip-10-144-108-25 gittest2]$ mv w205 w205_2
[w205@ip-10-144-108-25 gittest2]$ git init
Initialized empty Git repository in /home/w205/gittest2/.git/
[w205@ip-10-144-108-25 gittest2]$ git add README.md
[w205@ip-10-144-108-25 gittest2]$ git commit -m "first commit"
[master (root-commit) 35df498] first commit
 Committer: w205 <w205@ip-10-144-108-25.ec2.internal>
Your name and email address were configured automatically based
on your username and hostname. Please check that they are accurate.
You can suppress this message by setting them explicitly:

    git config --global user.name "Your Name"
    git config --global user.email you@example.com

If the identity used for this commit is wrong, you can fix it with:

    git commit --amend --author='Your Name <you@example.com>'

 1 files changed, 1 insertions(+), 0 deletions(-)
 create mode 100644 README.md
[w205@ip-10-144-108-25 gittest2]$ git remote add origin https://github.com/rudyferrara/w205_2.git
[w205@ip-10-144-108-25 gittest2]$ git push -u origin master
error: The requested URL returned error: 403 Forbidden while accessing https://github.com/rudyferrara/w205_2.git/info/refs

fatal: HTTP request failed
[w205@ip-10-144-108-25 gittest2]$ git push -u origin master
error: The requested URL returned error: 403 Forbidden while accessing https://github.com/rudyferrara/w205_2.git/info/refs

fatal: HTTP request failed
[w205@ip-10-144-108-25 gittest2]$ git remote add origin https://github.com/rudyferrara/w205_2.git
fatal: remote origin already exists.
[w205@ip-10-144-108-25 gittest2]$ git remote add origin https://github.com/rudyferrara/w205.git
fatal: remote origin already exists.
[w205@ip-10-144-108-25 gittest2]$ git remote add origin https://github.com/rudyferrara/w205_3.git
fatal: remote origin already exists.
[w205@ip-10-144-108-25 gittest2]$ pwd
/home/w205/gittest2
