#Requires AutoHotkey v2.0

MsgBox "It's Jigglin Time"

^1::
{
	
		Click "Down Right"
		MouseMove 50, 50, 100, "R"
		return
}

Esc::
{
	MsgBox "Jiggle aborted."
	Suspend
	Click "Up Right"
	Return
}

