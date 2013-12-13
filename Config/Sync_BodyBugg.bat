
ECHO OFF

SET HOUR=%time:~0,2%
SET dtStamp9=%date:~-4%%date:~4,2%%date:~7,2%_0%time:~1,1%%time:~3,2%%time:~6,2% 
SET dtStamp24=%date:~-4%%date:~4,2%%date:~7,2%_%time:~0,2%%time:~3,2%%time:~6,2%

IF "%HOUR:~0,1%" == " " (SET dtStamp=%dtStamp9%) ELSE (SET dtStamp=%dtStamp24%)

ECHO %dtStamp%
ECHO ON

C:\Python\v2.7\python.exe C:\Users\Travis\Documents\GitHub\BB_Sync_Test\Program\BodyBugg.py --fromSerial=COM3 --toCsv=C:\Users\Travis\Documents\GitHub\Data\%dtStamp%.csv

PAUSE

C:\Python\v2.7\python.exe C:\Users\Travis\Documents\GitHub\BB_Sync_Test\Program\BodyBugg.py --fromSerial=COM3 --clear