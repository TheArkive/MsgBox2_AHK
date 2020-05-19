; AHK v1
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#INCLUDE TheArkive_MsgBox2_v3.ahk

Global MainHwnd, bigMsg, msgboxStyle
msgboxStyle := "txtColor:Red,fontFace:Courier New,fontSize:12," ; always end with a comma, it's just easier
MsgBox2ExGui()

MsgBox2ExGui() {
	Gui, New, +HwndMainHwnd +LabelMsgBox2Ex
	Gui, Add, Button, gExample1, Ex #1
	Gui, Show, w300
}

Example1() {
	; msgboxStyle := "txtColor:Red,fontFace:Verdana,fontSize:10," ; always end with a comma, it's just easier
	sTitle := "File Delete Action"
	; sMsg := "This is an interesting test message.`r`n`r`nDelete file?"
	
	sMsg := "BLAH blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah BLAH blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah BLAH blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah BLAH blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah"
	
	; sMsg := "BLAH blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah BLAH blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah BLAH blah blah blah blah blah blah blah blah blah blah blah blah blah blah"
	
	; sMsg := FileRead("__testMsg1.txt")
	; sOptions := msgboxStyle
	sOptions .= "modal:" MainHwnd ",noCloseBtn,btnAlign:right,"
	sOptions .= "icon:warning,"
	sOptions .= "list:Option 1|Option 2|Option 3|Option 4|Option 5|Option 6|Option 7|Option 8|Option 9|Option 10|Option 11:3:5,"
	sOptions .= "check:Don't show again.:1,"	; add global style + checkBox
	sOptions .= "dropList:Long Long Long Long Long Long Long Option1|Option2|Option 3:2,"
	sOptions .= "combo:Option 4|Option 5|Option 6:3,"
	sOptions .= "edit:New_file_name.txt,"
	sOptions .= "btnList:OK|Cancel|Try Again,maxWidth:0," ; selectable
	
	mb2 := new msgbox2(sMsg,sTitle,sOptions) ; bigMsg
	
	msgbox % "edit: " mb2.edit 
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

MsgBox2ExClose(hwnd) {
	if (hwnd = MainHwnd)
		ExitApp
}

bigMsg =
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
)
