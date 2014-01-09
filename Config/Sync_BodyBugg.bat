
ECHO OFF

C:\Python\v2.7\python.exe C:\Users\Travis\Documents\GitHub\BB_Sync_Test\Program\Get_Current_Date_Time.py > tempfile

SET /p DATETIME= < tempfile
DEL tempfile

C:\Python\v2.7\python.exe C:\Users\Travis\Documents\GitHub\BB_Sync_Test\Program\BodyBugg.py --fromSerial=COM3 --toCsv=C:\Users\Travis\Documents\GitHub\Data\%DATETIME%.csv

PAUSE

C:\Python\v2.7\python.exe C:\Users\Travis\Documents\GitHub\BB_Sync_Test\Program\BodyBugg.py --fromSerial=COM3 --clear