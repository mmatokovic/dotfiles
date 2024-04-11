#$Home\Documents\WindowsPowerShell\Microsoft. PowerShell_profile. ps1

Import-Module posh-git
Import-Module z
Set-PSReadlineKeyHandler -Key ctrl+d -Function ViExit
New-Alias -Name fuck -Value thefuck
Invoke-Expression (&starship init powershell)

# Import the Chocolatey Profile that contains the necessary code to enable
# tab-completions to function for `choco`.
# Be aware that if you are missing these lines from your profile, tab completion
# for `choco` will not function.
# See https://ch0.co/tab-completion for details.
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}