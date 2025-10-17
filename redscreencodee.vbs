Set objIE = CreateObject("InternetExplorer.Application")
objIE.Visible = True
objIE.FullScreen = True
objIE.Navigate("about:blank")

Do While objIE.Busy
    WScript.Sleep 100
Loop

objIE.Document.Title = "Fake Red Screen"
objIE.Document.Body.Style.Margin = "0"
objIE.Document.Body.Style.Padding = "0"
objIE.Document.Body.Style.BackgroundColor = "black"
objIE.Document.Body.InnerHTML = "<img src='redscreenofdeath.png' style='width:100%;height:100%;object-fit:cover;'>"
