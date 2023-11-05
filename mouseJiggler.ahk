#Requires AutoHotkey v2.0

MsgBox "It's Jigglin Time:"

^1::
{
StartTime := A_TickCount

	Loop
	{
		if (A_TickCount - StartTime >2*MaxTime +100)
		{
			MsgBox "Jiggle aborted. Too much time has passed."
			ExitApp
		}
		
			Click "Down Right"
			MouseMove 50, 50, 100, "R"
			return
	}
}

^2::
{
ElapsedTime 
}

Esc::
{
	MsgBox "Jiggle aborted."
	Click "Up Right"
	Suspend
	Return
}
^Esc::
{
	MsgBox "Jiggle aborted."
	ExitApp
}

