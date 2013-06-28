# PowerShell needs TERM exported for git stuff
$env:TERM = "msys"

# Add some stuff to the path
$env:PATH = $env:PATH + ";C:\Program Files (x86)\PuTTY"

ls "C:\CommonPowerShell\Modules" | ? { $_.Extension -eq ".psm1" } | % { import-module $_.FullName }

cd "C:\Users\$env:USERNAME\Documents\"
$POWERSHELL_HELPERS = "C:\CommonPowershell"

# Alias files
. $POWERSHELL_HELPERS\Alias.ps1

# SSH Agent support
. $POWERSHELL_HELPERS\SshAgentUtils.ps1

# Pairing Script
. $POWERSHELL_HELPERS\Pair.ps1

# Custom Prompt Script
. $POWERSHELL_HELPERS\CustomPrompt.ps1

# Git Utilities
. $POWERSHELL_HELPERS\GitUtils.ps1
