echo "Copying required files..."
copy WindowsPowerShell/ C:/users/$env:USERNAME/Documents/ -recurse -force
copy C:/users/$env:USERNAME/Documents/WindowsPowerShell/Microsoft.PowerShell_profile.ps1 C:/users/$env:USERNAME/Documents/WindowsPowerShell/Microsoft.PowerShellISE_profile.ps1
copy CommonPowerShell/ C:/ -recurse -force
copy .ssh/ C:/ -recurse -force

echo ""
echo "Completed."
echo "Please restart your shell to source files"