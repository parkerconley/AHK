{ ;===================================SETTINGS===================================
    #NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
    #InstallKeybdHook
    #InstallMouseHook
    #SingleInstance ; Only one instance of the script can run at a time.
    SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
    SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
}

{ ;===================================HOTSTRINGS===================================
    :*:;di::List the differences between the following concepts: 
    :*:;si::List the similarities between the following concepts: 
    :*:;ad::Explain the following concept using (1) an analogy, (2) a diagram, (3) an example, (4) plain language, (5) technical details, and (6) its history: 
    :*:;ot::List the other terms for the following concept: 
    :*:;de::Define the following concept:
}