;Copy and pasted the script used to move the excel sheet information to the YouTube channel form iCue_F24_macro_keybaord.ahk to here. The loop function never ended up being used.


;Dhammarato Archive title + description from Excel to YouTube

	;BEFORE LOOP
	YTScrollBarX = 1911
	YTScrollBarY = 229
	OptionsX = 982
	OptionsY = 720
	TitleX = 934
	TitleY = 554
	
	
	;LOOP START
	;Loop, 2 {
		;TAKE EXCEL DATA AND PUT INTO YOUTUBE
		;Select Excel (after selecting YouTube)
		SendInput, {Click 1700 -1421}
		Sleep 100
				
		;Go Down One Cell, Left One Cell (Down Arrow, Left Arrow)
		Send, {Down}
		Sleep 50
		Send, {Left}
		Sleep 50
		
		;Copy cell
		Send, ^c
		
		;Select Dhammarato Chrome Tab with YouTube (200% Zoom, Scrolled all the way up, 10 vids/page, Everything lined up)
		SendInput, {Click 1439 1459}
		
		;Navigate to Options (...) and click three times (selecting options, Edit title and description, then title)
		MouseMove, OptionsX, OptionsY ;Move to Options
		Sleep 100
		SendInput, {Click} ;Select "Options"
		Sleep 700
		SendInput, {Click} ;Select "Edit title and description"
		Sleep 500
		
		MouseMove, TitleX, TitleY
		SendInput, {Click} ;Select "Title"
		Sleep 500
		
		;Paste title from Excel sheet
		Send, ^a
		Send, ^v
				
		;Select Excel
		SendInput, {Click 1700 -1421}
		Sleep 100
				
		;Go Right One Cell (Right Arrow)
		Send, {Right}
		Sleep 100
				
		;Copy Cell
		Send, ^c
				
		;Select Dhammarato Chrome Tab with YouTube
		SendInput, {Click 1439 1459}
				
		;Select Description
		SendInput, {Click 964 751} ;Select "Description"
		
		Sleep 500
		
		;Paste description from Excel sheet
		Send, ^a
		Send, ^v
		
		;Delete unnessesary stuff from description
		Send, {Home} ;Start Quotation Mark
		Send, {Right}
		Send, {BS}
		
		Send, ^{End}
		Send, {BS} ;Extra line
		Send, {BS} ;End Quotation Mark
		
		Sleep 100
		
		;Save Title/Desc
		Send, {Click 1443 917}
		
		;Line up next video
		;MouseMove, YTScrollBarX, YTScrollBarY
		;MouseClickDrag, Left, YTScrollBarX, YTScrollBarY, YTScrollBarX, YTScrollBarY + 59, 10
		;YTScrollBarY = YTScrollBarY + 59
		
		;Sleep 1000
	;}
	
	Return


    ;TEST
	YTScrollBarX = 1911
	YTScrollBarY = 229
	
	;SendInput, {Click 1439 1459}
		
	Loop, 9 {
	MouseMove, YTScrollBarX, YTScrollBarY
	MouseClickDrag, Left, YTScrollBarX, YTScrollBarY, YTScrollBarX, YTScrollBarY + 59, 10
	YTScrollBarY += 59
	Sleep 1000
	}
	
	Return




    	;Create Playlist for YouTube from name on excel spreadsheet
	;Send, ^c
	;SendInput, {Click 1835 1607}
	;Sleep, 50
	;Send, {TAB}
	;Sleep, 50
	;Send, ^v
	;Send, {BackSpace}
	;Send, {TAB}
	;Send, {TAB}
	;Send, {TAB}
	;Send, {Enter}
	;SendInput, {Click 155 -1165}
	;Return