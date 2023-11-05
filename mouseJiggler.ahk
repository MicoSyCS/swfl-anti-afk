#Requires AutoHotkey v2.0

MsgBox "It's Jigglin Time"

^1::
{
	Click "Down Right"
	Send "{w down}"
	
	Loop
	{
			MouseMove 50, 50, 100, "R"
			sleep 500
			MouseMove -50, 50, 100, "R"
			sleep 5000
	}
}

Esc::
{
	Click "Up Right"
	Send "{w up}"
	MsgBox "Jiggle aborted. Exiting App"
	ExitApp
}

^Esc::
{
	MsgBox "Jiggle paused"
	Click "Up Right"
	Send "{w up}"
	Suspend
	Return
}

