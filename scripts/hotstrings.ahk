{ ;===================================SETTINGS===================================
    #NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
    #InstallKeybdHook
    #InstallMouseHook
    #SingleInstance ; Only one instance of the script can run at a time.
    SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
    SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
}

{ ;===================================HOTSTRINGS===================================

    ; PROMPTS
    :*:;sd::List the similarities differences between the following concepts: {Space}
    :*:;ad::Explain the following concept using (1) an analogy, (2) an ASCII diagram, (3) an example, (4) plain language, (5) technical details, and (6) its history: {Space}
    :*:;ot::List the other terms similar to the following concept: {Space}
    :*:;ca:: ;anki flash card creator
    :*:;af::Context: (where and what is this) {Space} +{Enter}Outcome: (what is being accomplished) {Space} +{Enter}Tone/Style: (funny, serious, engaging, viral, etc.) {Space} +{Enter}Complexity: (how deep should I go, grade level, education level) {Space} +{Enter}Questions: Ask me any questions that would help you better achieve the outcome. {Space} +{Enter} +{Enter}[information]

    ; VW
    :*:;vbtv::Hello,+{Enter}+{Enter}We're sorry for the inconvenience. Please email help@volleyballworld.tv for support. +{Enter}+{Enter}Please provide them with a clear description of your concern and a way to get in contact with you, including:+{Enter}- Type of issue (e.g., garbling, captions cut off at certain times or on certain episodes of certain programming; +{Enter}- Website or application where you viewed the programming +{Enter}- Approximate time and date that the issue occurred; and +{Enter}- Your name and contact information
}