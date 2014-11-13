# PowerShellDev
*All the utilities to make PowerShell nicer for developers*

By Mishkin Faustini

##### Custom shell prompt for git directors (and git setup with aliases for git status (gst) and other git commands
```powershell
Mishkin@MISHPRO PowerShellDev [master +1 ~0 -0]> git status
Mishkin Faustini
# On branch master
# Changes to be committed:
#   (use "git reset HEAD <file>..." to unstage)
#
#       new file:   blah.txt
#
```

##### Pairing script for extreme programming
```powershell
Mishkin@MISHPRO PowerShellDev [master +1 ~0 -0]> pair mf
**** PAIRING USERS:
Mishkin Faustini
'C:\.ssh\keys\mishkinfaustini'
Enter passphrase for C:\.ssh\keys\mishkinfaustini:
Identity added: C:\.ssh\keys\mishkinfaustini (C:\.ssh\keys\mishkinfaustini)
NAMES: Mishkin Faustini
EMAILS: some@email.address
```

##### Easily copy variables and outputs to the clipboard
```powershell
Mishkin@MISHPRO > "easily copy your text to the clipboard" | out-clipboard
Text copied to clipboard!
```

... and many more little niceties ...

### To Setup:
1. Install msysgit with everything included from http://code.google.com/p/msysgit/downloads/list
2. Modify .ssh/config and add your keyfile information
    "
	Host *
	    ForwardAgent yes
	    User <username>
	    IdentityFile keys/<yourkeyfile>
    "
    If you don't know much about ssh keys then please review
3. Add your ssh keys to PowerShellDev/.ssh/keys/
4. [Optional] Extreme programmers who plan to pair while developing can add their names, usernames and email addresses to the Pair.ps1 script
5. Run powershell and navigate to the PowerShellDev project folder and run ./stationsetup.ps1
6. Restart PowerShell and happy PowerShelling!! 

### License
The MIT License Copyright (c) 2013 TrueCar, Inc.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE. TY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
