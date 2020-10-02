@echo off
rem This is a short cut to open a code file using notepadd++
rem actually, you may change to any application you want
set application_path=C:\Users\leonlau\Documents\NotePad++\notepad++.exe

rem this script will automatically add the current directory to the file name
set file="%cd%\%1"

rem I added the flags so that the script will call a minized cmd to open the file
rem so that the current cmd can continue to work
start /min cmd /c "%application_path% %file%"

rem using this format, you may use it to open any file type with any application
