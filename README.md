Monokai - Command Prompt theme
=============================================

This is a [Monokai][1] color scheme, adapted by Andrew Reid East from
the [Solarized][2] color scheme for the Windows command prompt,
contributed by [Neil Pankey][3]. Solarized Inspired by this [post][4]

Installation
------------

Import the `.reg` file of choice, e.g. `regedit /s monokai.reg`.

If you're using these themes with PowerShell (especially the light), I
recommend updating the default error and warning colors in your profile at
`~\Documents\WindowsPowerShell\profile.ps1`. Setting the background colors for
each to "White"/"Black" for light/dark respectively should do the trick, e.g.

    $Host.PrivateData.DebugBackgroundColor = "Black"
    $Host.PrivateData.ErrorBackgroundColor = "Black"
  
Screenshots
------------

![Monokai prompt][5]

[1]: http://www.monokai.nl/blog/2006/07/15/textmate-color-theme/
[2]: https://github.com/neilpa/cmd-colors-solarized
[3]: https://github.com/neilpa
[4]: https://github.com/altercation/solarized/issues/127
[5]: https://raw.github.com/reideast/cmd-colors-monokai/monokai/cmd-monokai.png
