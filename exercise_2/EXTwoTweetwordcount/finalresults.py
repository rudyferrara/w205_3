import psycopg2
import sys

conn = psycopg2.connect(database="ex2", user="postgres", password="pass", host="localhost", port="5432")
cur = conn.cursor()
if len(sys.argv)<=1:
  cur.execute("SELECT word, count from Tweetwordcount order by word")  
  records = cur.fetchall()  
  for rec in records:
     print ("(<"+rec[0]+">, "+str(rec[1])+"), "), 
else:
  word=sys.argv[1]
  cur.execute("select sum(count) from Tweetwordcount where word = %s",(word,))
  records = cur.fetchall()
  for rec in records:
     print ("Total number of occurrences of \""+word+"\": "+str(rec[0]))
conn.commit()
conn.close()
  

