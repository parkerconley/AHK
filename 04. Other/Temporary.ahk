{ ;===================================TEMPORARY===================================
    ^q::Options("google")
    ^+q::Options("wikipedia")
    ^+e::Options("chatgpt")
        
}

    ;assign the most popular options with separate triggers
    Options(CtrlShiftX){
            if (CtrlShiftX = ""){
                ;w
            }
            if (CtrlShiftX = "etymonline"){
                Send, ^c
                Run, chrome.exe "https://www.etymonline.com/search?q=%clipboard%" " --new-window "
                Return             
            }
            if (CtrlShiftX = "google"){
                Send, ^c
                Sleep 50
                Run, chrome.exe "https://www.google.com/" " --new-tab "
                Return
            }
            if (CtrlShiftX = "wikipedia"){
                Send, ^c
                Sleep 50
                Run, chrome.exe "https://en.wikipedia.org/wiki/Special:Search" " --new-tab "
                Return
            }
            if (CtrlShiftX = "chatgpt"){
                Run, chrome.exe "https://chat.openai.com/chat" " --new-tab "
                Return
            }

            if (CtrlShiftX = "contents"){
                Send, {Down 2}
                Send, {BackSpace 2}
                Send, {Enter}
                Return
            }

            if (CtrlShiftX = "season"){
                Click
                Click
                Click
                Click
                Click
                Click
                Click
                Return
            }

            Return
    }
; insperation for this comes from this video: https://www.youtube.com/watch?v=aIlssnAwK3M&list=WL&index=1&t=185s