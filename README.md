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

##### Output to speech similar to the Mac terminal "say" command
```powershell
Mishkin@MISHPRO > "Powershell is better than bash!" | out-speech
```

... and many more little niceties ...

### SETUP INSTRUCTIONS
#### PowerShellDev helpers
1. [Optional] Extreme programmers who plan to pair while developing can add their names, usernames and email addresses to the Pair.ps1 script
2. Run powershell and navigate to the PowerShellDev project folder and run ./stationsetup.ps1
3. Restart PowerShell.

#### Git and SSH
1. Install msysgit with everything included from http://msysgit.github.io/
2. During installation make sure to select "Use Git from the Windows Command Prompt"
3. Add "C:\Program Files (x86)\Git\bin" to your PATH
4. Modify .ssh/config and add your keyfile information
    "
	Host *
	    ForwardAgent yes
	    User <username>
	    IdentityFile keys/<yourkeyfile>
    "
    If you don't know much about ssh keys then please review
5. Add your ssh keys to PowerShellDev/.ssh/keys/
6. Restart PowerShell.

#### Vim
1. Install Vim from http://www.vim.org/download.php#pc and make sure the Vim directory is added to your path (C:\Program Files (x86)\Vim\vim74)
2. Restart PowerShell.
