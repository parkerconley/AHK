#Include C:\AHK\Chrome.ahk\Chrome.ahk
#SingleInstance
#InstallMouseHook
#KeyHistory 500

{ ;===================================CLIPRO SHORTCUTS===================================
    ;Load page object from Clipro website
    ^+l::
        page := Chrome.GetPageByURL("https://www.clipro.tv")
        ; If page isn't identified, a msgbox pops up.
        if  !IsObject(page) {
            MsgBox, That wasn't an object.
            ExitApp
        }
        return
    
    ;Save
    ^+s::More(page, 2)

    ^+f::More(page, 1)

    ;Star Shortcuts
    ^+1::Rate(page,1)
    ^+2::Rate(page,2)
    ^+3::Rate(page,3)
    ^+4::Rate(page,4)
    ^+5::Rate(page,5)

    ;Select, add tag, and select name area
    ^+d::SelectAndForward()

    ^+k::Rename(page)

    ^+e::DontSave(page)
}

{ ;===================================CLIPRO FUNCTIONS===================================
    More(page, x) {
        page.Evaluate(document.querySelector(".btn.btn-primary.dropdown-toggle-split").click())

        ;download
        if (x = 1) {
            page.Evaluate(document.querySelectorAll("button.dropdown-item")[0].click())
        }

        ;save
        if (x = 2) {
            page.Evaluate(document.querySelectorAll("button.dropdown-item")[1].click())
        }

        ;duplicate
        if (x = 3) {
            page.Evaluate(document.querySelectorAll("button.dropdown-item")[2].click())
        }

        else {
            MsgBox, "Error: Wrong Input for More() Function"
        }

        Return
    }

    Rate(page, number) {
        if (number = 1) {
            JS = document.querySelector('[data-type="star-rating-input-1"]').click()

            page.Evaluate(JS)

            Send, 1
        }

        if (number = 2) {
            JS = document.querySelector('[data-type="star-rating-input-2"]').click()

            page.Evaluate(JS)

            Send, 2
        }

        if (number = 3) {
            JS = document.querySelector('[data-type="star-rating-input-3"]').click()

            page.Evaluate(JS)

            Send, 3
        }

        if (number = 4) {
            JS = document.querySelector('[data-type="star-rating-input-4"]').click()

            page.Evaluate(JS)

            Send, 4
        }

        if (number = 5) {
            JS = document.querySelector('[data-type="star-rating-input-5"]').click()

            page.Evaluate(JS)

            Send, 5
        }

        Return
    }

    SelectAndForward() {
        Click

        Sleep 500

        Send, ^{right}

        return
    }

    Rename(page) {
        Loop 27 {
            Send {Tab down}
            Sleep 30
        }
        Send {Tab up}

        ;Send {TAB 3}
        ;Send "p"
        ;Send +{TAB 4}

        return
    }

    DontSave(page) {
        page.Evaluate(document.querySelector("button.btn.btn-outline-secondary").click())

        return
    }


    ;"More options"
    ;page.Evaluate(document.querySelector("button.btn.btn-link.btn-link-without-focus-decoration.border-0.p-0.d-block").click())
}
