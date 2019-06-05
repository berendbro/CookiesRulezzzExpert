Set oShell = CreateObject ("Wscript.Shell") 
Dim strArgs
strArgs = "cmd /c sab.bat"
oShell.Run strArgs, 0, fals