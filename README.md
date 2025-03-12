```bash
_________     _______________________
______  /_______  /___  __/__(_)__  /____________
_  __  /_  __ \  __/_  /_ __  /__  /_  _ \_  ___/
/ /_/ / / /_/ / /_ _  __/ _  / _  / /  __/(__  )
\__,_/  \____/\__/ /_/    /_/  /_/  \___//____/
```

## Install

Using bootstrap script run in PowerShell **Administrator mode**

```PowerShell
Set-ExecutionPolicy RemoteSigned
iwr https://raw.githubusercontent.com/mmatokovic/dotfiles/main/scripts/bootstrap.ps1 -UseBasicParsing | iex
```

Open "`notepad $PROFILE`" and copy content from `Microsoft.PowerShell_profile.ps1`

Reload PowerShell profile for current prompt

```PowerShell
. $PROFILE
```

### Manualy

Clone repo into new directory `~/dotfiles`

```PowerShell
# Use SSH (if set up)...
git clone git@github.com:mmatokovic/dotfiles.git ~/dotfiles

# ...or use HTTPS and switch remotes later.
git clone https://github.com/mmatokovic/dotfiles.git ~/dotfiles
```

Create symlinks in the Home directory to the files on the repo

```PowerShell
Remove-Item $env:UserProfile\.gitconfig -Force
New-Item -ItemType HardLink -Path $env:UserProfile\.gitconfig -Target "~\dotfiles\gitconfig.symlink"
```

## Enable hidden files

### VS Code

1. On Windows, in VS Code, go to `File` > `Preferences` > `Settings` to display hidden.
2. Create a repo folder: `mkdir ~/source/repos`

### Windows 10

1. Open File Explorer from the taskbar.
2. Select View > Options > Change folder and search options.
3. Select the View tab and, in Advanced settings, select Show hidden files, folders, and drives and OK.

### Windows 11

1. Open File Explorer  from the taskbar.
2. Select View > Show > Hidden items.
