@echo off
rem This is an automation for generating a todo list in mark down format for the day
rem --------------------------------------------------------------------------------

rem set your username
set user_name=USERNAME

rem format of mydate: (yyyymmdd)
set mydate=%date:~10,4%%date:~7,2%%date:~4,2% %date:~0,3%

rem format of file name: todo_yyyymmdd.md
set filename=todo_%date:~10,4%%date:~7,2%%date:~4,2%.md

rem create a today.bat file to call the list of the date in downloads folder
cd "C:\Users\%user_name%\downloads"
type nul > today.bat
echo @echo off >> today.bat
echo cd "C:\Users\%user_name%\downloads\todo list" >> today.bat
echo %filename% >> today.bat
echo exit 0 >> today.bat

rem create the todo list file
cd "C:\Users\%user_name%\downloads\todo list"
type null  > %filename%
set title=###Todo %mydate%
echo %title%>  %filename%

rem You may set so routine work here using logic
if "%date:~0,3%"=="Fri" echo [] drink some water >> %filename%
::echo. >> %filename%
echo [] >> %filename%
%filename%
exit 0
