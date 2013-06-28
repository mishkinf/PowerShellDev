# PowerShellDev
*All the utilities to make PowerShell nicer for developers*
##### Author: Mishkin Faustini
### To Setup:
1) Install msysgit with everything included from http://code.google.com/p/msysgit/downloads/list
2) Modify .ssh/config and add your keyfile information
    "
	Host *
	    ForwardAgent yes
	    User <username>
	    IdentityFile keys/<yourkeyfile>
    "
    If you don't know much about ssh keys then please review
3) Add your ssh keys to PowerShellDev/.ssh/keys/
4) [Optional] Extreme programmers who plan to pair while developing can add their names, usernames and email addresses to the Pair.ps1 script
5) Run powershell and navigate to the PowerShellDev project folder and run ./stationsetup.ps1
4) Restart PowerShell and happy shelling! 

### License
The MIT License Copyright (c) 2013 TrueCar, Inc.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE. TY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
