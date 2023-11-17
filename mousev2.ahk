
<+XButton1::
{
    Send "^#{Left}"
    ToolTip "Desktop Left"
    SetTimer () => ToolTip(), -450
    Return
}

<+XButton2::
{
    Send "^#{Right}"
    ToolTip "Desktop Right"
    SetTimer () => ToolTip(), -450
    Return
}

<+MButton::
{
    Send "^#d"
    ToolTip "New Desktop"
    SetTimer () => ToolTip(), -450
    Return
}

<+!MButton::
{
    Send "^#!{F4}"
    ToolTip "Desktop Close"
    SetTimer () => ToolTip(), -450
    Return
}


