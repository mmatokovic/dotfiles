# Import posh-git module
Import-Module posh-git

# Import z module
Import-Module z

# Add Aliases
New-Alias -Name fuck -Value thefuck
New-Alias -Name cinst -Value choco install

# Enable close by CTRL+D
Set-PSReadlineKeyHandler -Key ctrl+d -Function ViExit

# Import the Chocolatey Profile that contains the necessary code to enable
# tab-completions to function for `choco`.
# Be aware that if you are missing these lines from your profile, tab completion
# for `choco` will not function.
# See https://ch0.co/tab-completion for details.
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

# Init script for startship
Invoke-Expression (&starship init powershell)
