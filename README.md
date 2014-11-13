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
##### SSH Capabilities
```powershell
Mishkin@MISHPRO PowerShellDev [master +1 ~0 -0]> ssh
usage: ssh [-1246AaCfgkMNnqsTtVvXxY] [-b bind_address] [-c cipher_spec]
           [-D [bind_address:]port] [-e escape_char] [-F configfile]
           [-i identity_file] [-L [bind_address:]port:host:hostport]
           [-l login_name] [-m mac_spec] [-O ctl_cmd] [-o option] [-p port]
           [-R [bind_address:]port:host:hostport] [-S ctl_path]
           [-w local_tun[:remote_tun]] [user@]hostname [command]
```
##### Vim for text editing
```powershell
Mishkin@MISHPRO PowerShellDev [master +1 ~0 -0]> vim

                    VIM - Vi IMproved

                       version 7.4
                 by Bram Moolenaar et al.
       Vim is open source and freely distributable

              Become a registered Vim user!
      type  :help register<Enter>   for information

      type  :q<Enter>               to exit
      type  :help<Enter>  or  <F1>  for on-line help
      type  :help version7<Enter>   for version info
```

##### Pairing script for EXTREME PROGRAMMING (paired programming)
```powershell
Mishkin@MISHPRO PowerShellDev [master +1 ~0 -0]> pair mf hw
**** PAIRING USERS:
Mishkin Faustini & Hollin Wilkins
Using the first pairs key: 'C:\.ssh\keys\mishkinfaustini'
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
1. Extreme programmers who plan to pair while developing can add their names, usernames and email addresses to the Pair.ps1 script
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
