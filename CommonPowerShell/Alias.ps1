# sample alias
# see 'man set-alias -examples' for more examples
function gst { git status }
function gdiff { git diff $args }
function gs { git stash $args }


function git {  
    & "C:\Program Files (x86)\Git\bin\git.exe" config user.name; & "C:\Program Files (x86)\Git\bin\git.exe" $args
}

# Optional feature: Allows you to type your project name and cd into the directory 
# $workspace = "~\Documents\Visual Studio 2013\Projects"
# function workspace { cd $workspace }
# create easy chdir to all of our projects
# ls "$workspace" | %{
#     $script = $executioncontext.InvokeCommand.NewScriptBlock(" function $_() { cd '$workspace\$_' } ")

#     Invoke-Command -NoNewScope -ScriptBlock $script 
# }

Add-Type -AssemblyName PresentationCore
function Out-Clipboard() { [System.Windows.Clipboard]::SetText($input) }
set-alias pbcopy Out-Clipboard #pbcopy is the mac bash equivalent

set-alias gh get-history
set-alias sftp psftp.exe

function which($item) { gcm $item | select CommandType, Name, Definition }