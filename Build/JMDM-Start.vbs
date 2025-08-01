Set WshShell = CreateObject("WScript.Shell") 
WshShell.Run "cmd /c ""%~dp0JMDM.bat""", 1, false 
