{ ;===================================SETTINGS===================================
    #NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
    #InstallKeybdHook
    #InstallMouseHook
    #SingleInstance ; Only one instance of the script can run at a time.
    SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
    SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
}

{ ;===================================TEMPORARY===================================
    ^q::Options("raindrop")
    ^+q::Options("elicit")
    ^+!q::Options("connectedpapers")
    ^e::Options("exa")
    ^+e::Options("chatgpt")
    ^+g::Options("ankigpt")
    ^+h::Options("keymapgpt")
    ^+s::Options("claude")
    ^+b::Options("web archive")
}

    ;assign the most popular options with separate triggers
    Options(CtrlShiftX){
            if (CtrlShiftX = ""){
                ;w
            }
            if (CtrlShiftX = "etymonline"){
                Run, chrome.exe "https://www.etymonline.com/" " --new-tab "
                Return             
            }
            if (CtrlShiftX = "google"){
                Run, chrome.exe "https://www.google.com/" " --new-tab "
                Return
            }
            if (CtrlShiftX = "wikipedia"){
                Run, chrome.exe "https://en.wikipedia.org/wiki/Special:Search" " --new-tab "
                Return
            }
            if (CtrlShiftX = "chatgpt"){
                Run, chrome.exe "https://chat.openai.com/?model=gpt-4" " --new-tab "
                Return
            }
            if (CtrlShiftX = "ankigpt"){
                Run, chrome.exe "https://chat.openai.com/g/g-7ypvy5dkD-flashcard-creator" " --new-tab "
                Return
            }
            if (CtrlShiftX = "keymapgpt"){
                Run, chrome.exe "https://chat.openai.com/g/g-hkpHH2Adc-keyword-map-creator" " --new-tab "
                Return
            }
            if (CtrlShiftX = "claude"){
                Run, chrome.exe "https://claude.ai/" " --new-tab "
                Return
            }
            if (CtrlShiftX = "elicit"){
                Run, chrome.exe "https://elicit.org/" " --new-tab "
                Return
            }
            if (CtrlShiftX = "connectedpapers"){
                Run, chrome.exe "https://www.connectedpapers.com/" " --new-tab "
                Return
            }
            if (CtrlShiftX = "scholar"){
                Run, chrome.exe "https://scholar.google.com/" " --new-tab "
                Return
            }
            if (CtrlShiftX = "exa"){
                Run, chrome.exe "https://exa.ai/search" " --new-tab "
                Return
            }
            if (CtrlShiftX = "fatebook"){
                Run, chrome.exe "https://www.fatebook.io/" " --new-tab "
                Return
            }
            if (CtrlShiftX = "gemini"){
                Run, chrome.exe "https://gemini.google.com/" " --new-tab "
                Return
            }
            if (CtrlShiftX = "raindrop"){
                Run, chrome.exe "https://app.raindrop.io/" " --new-tab "
                Return
            }

        
            if (CtrlShiftX = "web archive"){
                Send, ^l
                Send, ^l
                Send, ^l
                Send, ^c
                Sleep, 10
                Run, chrome.exe "https://web.archive.org/"%clipboard% " --new-tab "
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