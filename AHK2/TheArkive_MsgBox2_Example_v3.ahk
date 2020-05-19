; AHK v2
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir A_ScriptDir  ; Ensures a consistent starting directory.
;#NoTrayIcon

; #INCLUDE TheArkive_MsgBox2.ahk
#INCLUDE TheArkive_MsgBox2_v3.ahk

Global mb2ex, bigMsg, bigMsg2

StartGui()

StartGui() {
	mb2ex := GuiCreate("","MsgBox2 Examples")
	mb2ex.OnEvent("Close","mb2ex_Close")
	mb2ex.AddButton("","Ex #1").OnEvent("Click","Example1")
	mb2ex.Show("w200")
}

Example1(ctl,*) {
	; msgboxStyle := "txtColor:Red,fontFace:Verdana,fontSize:8," ; always end with a comma, it's just easier
	sTitle := "File Delete Action"
	; sMsg := "This is an interesting test message.`r`n`r`nDelete file?"
	
	sMsg := "BLAH blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah BLAH blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah BLAH blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah BLAH blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah"
	
	; sMsg := "BLAH blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah BLAH blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah BLAH blah blah blah blah blah blah blah blah blah blah blah blah blah blah"
	
	; sOptions := msgboxStyle
	sOptions .= "modal:" mb2ex.hwnd ","
	sOptions .= "icon:warning,"
	sOptions .= "DropList:Option 1|Option 2|Option 3|option 4|option 5:1,"
	sOptions .= "check:Don't show again.:1,"	; add global style + checkBox
	sOptions .= "list:Option 1|Option 2|Option 3|Option 4|Option 5|Option 6|Option 7|Option 8|Option 9|Option 10|Option 11:3:5,"
	sOptions .= "combo:Option 4|Option 5|Option 6:3,"
	sOptions .= "edit:New_file_name.txt,"
	sOptions .= "btnList:OK|Cancel,maxWidth:0," ; selectable
	
	mb2 := msgbox2.New(sMsg,sTitle,sOptions) ; bigMsg
	
	msgbox "edit: " mb2.edit 
	     . "`r`nlist: " mb2.list
		 . "`r`nlistText: " mb2.listText
	     . "`r`ndropList: " mb2.dropList 
		 . "`r`ndropListText: " mb2.dropListText
		 . "`r`ncombo: " mb2.combo 
		 . "`r`ncomboText: " mb2.comboText
		 . "`r`ncheck: " mb2.check 
		 . "`r`nbutton: " mb2.button 
		 . "`r`nclassNN: " mb2.classNN
	mb2 := ""
}

bigMsg := "
(
data data data data data data data data data data data data data data
data data data data data data data data data data data data data data
data data data data data data data data data data data data data data
data data data data data data data data data data data data data data
data data data data data data data data data data data data data data
data data data data data data data data data data data data data data
data data data data data data data data data data data data data data
data data data data data data data data data data data data data data
data data data data data data data data data data data data data data
data data data data data data data data data data data data data data
data data data data data data data data data data data data data data
data data data data data data data data data data data data data data
data data data data data data data data data data data data data data
data data data data data data data data data data data data data data
data data data data data data data data data data data data data data
data data data data data data data data data data data data data data
data data data data data data data data data data data data data data
data data data data data data data data data data data data data data
data data data data data data data data data data data data data data
data data data data data data data data data data data data data data
data data data data data data data data data data data data data data
data data data data data data data data data data data data data data
data data data data data data data data data data data data data data
data data data data data data data data data data data data data data
data data data data data data data data data data data data data data
data data data data data data data data data data data data data data
data data data data data data data data data data data data data data
data data data data data data data data data data data data data data
data data data data data data data data data data data data data data
data data data data data data data data data data data data data data
data data data data data data data data data data data data data data
data data data data data data data data data data data data data data
data data data data data data data data data data data data data data
data data data data data data data data data data data data data data
data data data data data data data data data data data data data data
data data data data data data data data data data data data data data
data data data data data data data data data data data data data data
data data data data data data data data data data data data data data
data data data data data data data data data data data data data data
data data data data data data data data data data data data data data
data data data data data data data data data data data data data data
data data data data data data data data data data data data data data
data data data data data data data data data data data data data data
data data data data data data data data data data data data data data
data data data data data data data data data data data data data data
data data data data data data data data data data data data data data
data data data data data data data data data data data data data data
data data data data data data data data data data data data data data
data data data data data data data data data data data data data data
data data data data data data data data data data data data data data
data data data data data data data data data data data data data data
data data data data data data data data data data data data data data
data data data data data data data data data data data data data data
data data data data data data data data data data data data data data
data data data data data data data data data data data data data data
data data data data data data data data data data data data data data
data data data data data data data data data data data data data data
data data data data data data data data data data data data data data
data data data data data data data data data data data data data data
data data data data data data data data data data data data data data
data data data data data data data data data data data data data data
data data data data data data data data data data data data data data
data data data data data data data data data data data data data data
data data data data data data data data data data data data data data
data data data data data data data data data data data data data data
data data data data data data data data data data data data data data
data data data data data data data data data data data data data data
data data data data data data data data data data data data data data
data data data data data data data data data data data data data data
data data data data data data data data data data data data data data
data data data data data data data data data data data data data data
)"

bigMsg2 := "
(
data data data data data data data 
data data data data data data data data data data data data data data
data data data data data data data data 
data data data data data data data data data data 
data data data
data data data data data data data dat
data data ddata data
data data data data data data data data data data data data data data
data data dadata data data
data data data data data data data 
data data data data data data data data d
data data data data data data data data dat
data data data data data data data data data data
data data d
data data dat
data data data data data dat
data data data data data data data data data data data data data data
data data data data data data data data data data 
data data data dat
data data data data data data data 
data data data data data data data data data data data data data data
data data data data data data data data 
data data data data data data data data data data 
data data data
data data data data data data data dat
data data ddata data
data data data data data data data data data data data data data data
data data dadata data data
data data data data data data data 
data data data data data data data data d
data data data data data data data data dat
data data data data data data data data data data
data data d
data data dat
data data data data data dat
data data data data data data data data data data data data data data
data data data data data data data data data data 
data data data dat
)"

mb2ex_Close(gui) {
	if (gui.hwnd = mb2ex.hwnd)
		ExitApp
}

F12::ExitApp