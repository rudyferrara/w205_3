from __future__ import absolute_import, print_function, unicode_literals

from collections import Counter
from streamparse.bolt import Bolt
from redis import StrictRedis
import psycopg2


class WordCounter(Bolt):

    def initialize(self, conf, ctx):
        self.counts = Counter()
        self.redis = StrictRedis()        
        self.conn = psycopg2.connect(user="postgres", password="pass", host="localhost", port="5432")
        self.cur = self.conn.cursor()
        self.conn.set_isolation_level(0)
        try:
          self.cur.execute("create database ex2")
        except:
          print("ex2 database exists")
        self.conn.commit()
        self.conn.close()
        self.conn = psycopg2.connect(database="ex2", user="postgres", password="pass", host="localhost", port="5432")
        self.cur = self.conn.cursor()
        try:
          self.cur.execute('''CREATE TABLE Tweetwordcount
            (word TEXT PRIMARY KEY     NOT NULL,
            count INT     NOT NULL);''')
        except:
          print("table Tweetwordcount exists")
        self.conn.commit()
        
        

    def process(self, tup):
        word = tup.values[0]

        # Write codes to increment the word count in Postgres
        # Use psycopg to interact with Postgres
        # Database name: Tcount 
        # Table name: Tweetwordcount 
        # you need to create both the database and the table in advance.
        

        # Increment the local count
        self.counts[word] += 1
        self.emit([word, self.counts[word]])
        self.cur.execute("update Tweetwordcount set count=count+1 where word=%s",(word,))
        if self.cur.rowcount==0:
           self.cur.execute("insert into Tweetwordcount values (%s,%s)",(word,self.counts[word]))
        self.conn.commit()
        # Log the count - just to see the topology running
        self.log('%s: %d' % (word, self.counts[word]))

