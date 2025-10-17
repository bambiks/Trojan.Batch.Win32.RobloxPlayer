Set objShell = CreateObject("WScript.Shell")
Set objFSO = CreateObject("Scripting.FileSystemObject")

' Ścieżka do fałszywego obrazka
imgPath = "C:\temp\scary.png"

' Ustaw tło pulpitu
objShell.RegWrite "HKCU\Control Panel\Desktop\Wallpaper", imgPath, "REG_SZ"
objShell.Run "RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters", 1, True

' Ukryj ikonki pulpitu (modyfikacja rejestru)
objShell.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\HideIcons", 1, "REG_DWORD"

