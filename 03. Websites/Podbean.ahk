#Include C:\AHK\Chrome.ahk\Chrome.ahk
#SingleInstance
;===================================PODBEAN SHORTCUTS==================================={

    ^+s::
        Loop 20 {    
            PublishEpWithFileName()
            Sleep 1000
        }
        return

    PublishEpWithFileName(){
        ;page := Chrome.GetPage()
        page := Chrome.GetPageByURL("https://admin5.podbean.com/dhammaratodhamma/episodes")

        ; If page isn't identified, a msgbox pops up.
        if  !IsObject(page) {
            MsgBox, That wasn't an object.
            ExitApp
        }

        ClickSelect(page)

        GetFileName()

        Sleep 100

        EpFile = %Clipboard%

        Try {
            ClickFileName(page, EpFile)
        } catch e {
            MarkMissing()
            return
        }

        GetTitle()
        
        Sleep 200

        EpTitle = %Clipboard%

        SetTitle(EpTitle)

        GetDesc()

        Sleep 500

        SetDesc()

        ;ClickPublish(page)
        ClickDraft(page)

        Sleep 3000

        GoBack()

        Sleep 3000

        page.Disconnect()

        return
    }

    MarkMissing(){
        WinActivate, Dhammarato Dhamma YouTube Videos - Active.xlsm - Excel

        Sleep 500

        SendInput, {ENTER}
        SendInput, {UP}
        SendInput, {alt down}
        Sleep 300
        SendInput, h
        Sleep 500
        SendInput, h
        Sleep 500
        SendInput, n
        Sleep 100
        SendInput, {alt up}
        Sleep 100
        SendInput, {down}

        Click 2400 550

        return
    }
;}

;===================================PODBEAN FUNCTIONS=================================== {
    ClickSelect(page) {
        SelectJS = document.querySelectorAll(".md-button.md-raised.md-theme-default")[1].click()

        page.Evaluate(SelectJS)

        return
    }

    GetFileName() {
        WinActivate, Dhammarato Dhamma YouTube Videos - Active.xlsm - Excel

        SendInput, {SPACE}
        Sleep 20
        SendInput, ^z
        SendInput, ^c

        return %ClipBoard%
    }

    ClickFileName(page, EpFile) {
        WinActivate, Publish Episode > Dhammarato Dhamma - Google Chrome

        FileJS = document.querySelector('[title="%EpFile%"]').click()

        page.Evaluate(FileJS)

        return
    }

    GetTitle() {
        WinActivate, Dhammarato Dhamma YouTube Videos - Active.xlsm - Excel

        SendInput, {RIGHT}
        SendInput, {SPACE}
        Sleep 20
        SendInput, ^z
        SendInput, ^c

        return %ClipBoard%
    }

    SetTitle(EpTitle) {
        WinActivate, Publish Episode > Dhammarato Dhamma - Google Chrome

        Sleep 100
        
        Click 800 380

        Sleep 500

        SendInput, ^v

        Sleep 100

        return
    }

    GetDesc() {
        WinActivate, Dhammarato Dhamma YouTube Videos - Active.xlsm - Excel

        SendInput, {RIGHT}
        SendInput, {SPACE}
        Sleep 20
        SendInput, ^z
        SendInput, ^c
        SendInput, {ESC}
        Sleep 10
        SendInput, {DOWN}
        SendInput, {LEFT}
        SendInput, {LEFT}

        return EpDesc
    }

    SetDesc() {
        WinActivate, Publish Episode > Dhammarato Dhamma - Google Chrome

        Click 1000 600

        Send, ^v

        Send, +{TAB}

        return
    }

    ClickPublish(page){
        PublishJS = document.querySelector(".md-info").click()

        page.Evaluate(PublishJS)

        return
    }

    ClickDraft(page){
        DraftJS = document.querySelectorAll(".md-button-content")[8].click()

        page.Evaluate(DraftJS)

        return
    }

    GoBack(){
        ;SendInput, ^l
        ;Clipboard = https://admin5.podbean.com/dhammadudes/episodes/form
        ;SendInput, ^v
        ;SendInput, {Enter}
        ;page.Evaluate(document.querySelectorAll(".nav-link")[2].click())
        Click 115 350 ;click on "episode list"
        Sleep 3000
        Click 2400 280 ;click on "new episode"
        return
    }
;}