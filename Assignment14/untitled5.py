import MySQLdb
#import Error
#from python_mysql_dbconfig import read_db_config
from mysql.connector import Error
db = MySQLdb.connect("localhost","root","root","pymysql" )

print("1.insert 2.update 3.delete")
ch=int(input("enter your choice...."))
if(ch==1):
    cursor = db.cursor()
    rno= input("roll number ")
    name= input("name ")
    marks= input("marks ")
    try:
        cursor.execute("""
                       INSERT INTO student
                       (rno, name, marks) VALUES
                       (%s, %s, %s)""" , (rno, name, marks))
        print("data inserted successfully")
        db.commit()
        
    except MySQLdb.Error as e:
        print("error occured =>{}".format(e))
        db.close()
    
    
    
elif(ch==2):
    try:
        cursor=db.cursor()
        name=input("enter name")
        rno=int(input("enter roll number"))
        #marks=input("enter marks")
        cursor.execute(""" update student SET name=%s where rno=%s;""",(name, rno))
        db.commit()
    except MySQLdb.Error as e:
        print("error occured =>{}".format(e))
        db.close()
    
        
        
elif(ch==3):
    try:
        cursor =db.cursor()
        rno=input("enter rno for deleting record")
    
        cursor.execute("""delete from student WHERE name=%s;""" % rno )
        db.commit()
        print("record deleted......")
    except MySQLdb.Error as e:
        print("error occured =>{}".format(e))
        db.close()
        
        
else:
    print("wrong choice attempt")
    
    
    
    
    
    