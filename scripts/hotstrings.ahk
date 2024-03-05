{ ;===================================SETTINGS===================================
    #NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
    #InstallKeybdHook
    #InstallMouseHook
    #SingleInstance ; Only one instance of the script can run at a time.
    SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
    SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
}

{ ;===================================HOTSTRINGS===================================

;; :*:;pc::https://calendly.com/parkerconley
;; ; PROMPTS
;; 
;; :*:;s::
;; (
;; Can you provide a comprehensive summary of the given text? The summary should cover all the key points and main ideas presented in the original text, while also condensing the information into a concise and easy-to-understand format. Please ensure that the summary includes relevant details and examples that support the main ideas, while avoiding any unnecessary information or repetition. The length of the summary should be appropriate for the length and complexity of the original text, providing a clear and accurate overview without omitting any important information.
;; )
;; return
;; 
;; :*:;a::
;; (
;; Use the following instructions to write a spaced repetition prompt which will reinforce ideas from the resource included in this message through retrieval practice. Good spaced repetition prompts should follow these principles: (1) Be focused: They should concentrate on one detail at a time to avoid unfocused questions that could hinder recall and concentration. (2) Be precise: They need to be explicit about what they're asking to avoid ambiguity and to properly activate targeted knowledge. (3) Be consistent: Each recall should aim to 'light the same bulbs', reinforcing the same knowledge each time. (4) Be tractable: They should be designed to nearly always yield a correct answer, which might require breaking down the task or adding cues. (5) Be effortful: The act of retrieval should involve some level of difficulty. The answer shouldn't be trivial or inferred too quickly. The question should focus retrieval on the reinforcement target without supplying, overconstraining, or unnecessarily cuing the answer. (6) Be opinionated: Emphasize rich understanding and important ideas over trivial details. (7) Be concise: Questions and answers should be as short as possible. (8) Be context-independent: In review, this prompt will be interleaved with many others about many topics. The prompt must cue or supply whatever context is necessary to understand the question. They should not assume one has read the text that generated the prompts. It shouldn't address the text or use the context of the text in any way. Please provide the best 3 possible spaced repetition prompts for each concept, providing both question and answer. Make sure your prompts follow all the principles above. Mention which of the following desired properties it has: focused, precise, consistent, tractable, effortful, opinionated, concise, context-independent (just write the words, without explanation). Make sure that you are reinforcing the target concept. Format your output in Markdown, with math expressed as inline LaTeX wrapped in $ characters. Here is an example card... Q: (new line) What is a model in engineering? (new line) A: (new line) an abstract representation of some system that eliminates unnecessary details (new line) (new line) *Properties: focused, precise, consistent, tractable, effortful, opinionated, concise, context-independent*)
;; return
;; )
;; return
;; }