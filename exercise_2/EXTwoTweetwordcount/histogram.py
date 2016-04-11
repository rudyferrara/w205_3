import psycopg2
import sys

conn = psycopg2.connect(database="ex2", user="postgres", password="pass", host="localhost", port="5432")
cur = conn.cursor()
if len(sys.argv)==2:
  ends = sys.argv[1].split(',')
  cur.execute("SELECT word, count from Tweetwordcount where count between %s and %s order by count desc",(ends[0],ends[1]))
  records = cur.fetchall()  
  for rec in records:
     print ("<"+rec[0]+">: "+str(rec[1]))
else:
  print("Incorrect number of arguments")
conn.commit()
conn.close()
  

