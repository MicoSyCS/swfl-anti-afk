#Requires AutoHotkey v2.0
SendMode "Event"

MsgBox "It's Jigglin Time"

^1::
{
	Click "Down Right"

	Loop
	{
			Send "{W down}"
			Send "{Space}"
			MouseMove 500, 0, 100, "R"
	}
}

Esc::
{
	Click "Up Right"
	Send "{W up}"
	MsgBox "Jiggle aborted. Exiting App"
	ExitApp
}

^Esc::
{
	MsgBox "Jiggle paused"
	Click "Up Right"
	Send "{W up}"
	Suspend
	Return
}

