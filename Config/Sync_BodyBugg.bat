
echo off
For /f "tokens=2-4 delims=/ " %%a in ('date /t') do (set mydate=%%c%%a%%b)
For /f "tokens=1-3 delims=/:" %%a in ("%time%") do (set mytime=%%a%%b%%c)
echo on

C:\Python\v2.7\python.exe C:\BodyMedia\bodymedia.py --fromSerial=COM3 --toCsv=%mydate%_%mytime:~0,6%.csv

PAUSE

C:\Python\v2.7\python.exe C:\BodyMedia\bodymedia.py --fromSerial=COM3 --clear