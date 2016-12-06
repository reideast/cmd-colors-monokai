Monokai - Command Prompt theme
=============================================

This is a [Monokai][1] color scheme, adapted by Andrew Reid East from
the [Solarized][2] color scheme for the Windows command prompt,
contributed by [Neil Pankey][3]. Solarized Inspired by this [post][4]

Installation
------------

Import the `monokai.reg` file of choice, e.g. `regedit /s monokai.reg`.

If you're using these themes with PowerShell (especially the light), I
recommend updating the default error and warning colors in your profile at
`~\Documents\WindowsPowerShell\profile.ps1`. Setting the background colors for
each to "White"/"Black" for light/dark respectively should do the trick, e.g.

    $Host.PrivateData.DebugBackgroundColor = "Black"
    $Host.PrivateData.ErrorBackgroundColor = "Black"

The registry values will update the Default colors in your prompt, but not
preexisting shortcuts. To update the default shortcut in Windows, create a
shortcut to `C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe`. This
new shortcut will have your updated colors. Modify the properties of the new
shortcut so "Start in:" is `%HOMEDRIVE%%HOMEPATH%`. Replace the Start Menu shortcut
`C:\Users\USERNAME\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Windows PowerShell\Windows PowerShell.lnk`.
This has the advantage of also affecting the Windows 8/10 Win+X menu shortcuts!

In case you want revert colors back to default there is `reset.reg`.

Screenshots
------------

![Monokai prompt][5]

[1]: http://www.monokai.nl/blog/2006/07/15/textmate-color-theme/
[2]: https://github.com/neilpa/cmd-colors-solarized
[3]: https://github.com/neilpa
[4]: https://github.com/altercation/solarized/issues/127
[5]: https://raw.github.com/reideast/cmd-colors-monokai/master/cmd-monokai.png
