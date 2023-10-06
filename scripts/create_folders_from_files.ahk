; Get the current path from the active Explorer window
WinGetClass, winClass, A
if (winClass = "CabinetWClass" or winClass = "ExploreWClass")
{
    ControlGetText, currentPath, Edit1, A
}

; If the path is found, proceed
if (currentPath != "")
{
    ; Run a loop for each .mp4 file in the directory
    Loop, %currentPath%\*.mp4
    {
        ; Extract the name without extension
        SplitPath, A_LoopFileFullPath, , , , nameNoExt
        ; Create a folder with that name
        FileCreateDir, %currentPath%\%nameNoExt%
    }
}

