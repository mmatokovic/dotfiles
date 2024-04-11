```bash
_________     _______________________
______  /_______  /___  __/__(_)__  /____________
_  __  /_  __ \  __/_  /_ __  /__  /_  _ \_  ___/
/ /_/ / / /_/ / /_ _  __/ _  / _  / /  __/(__  )
\__,_/  \____/\__/ /_/    /_/  /_/  \___//____/
```

Clone repo into new directory `~/.dotfiles`

```Bash
# Use SSH (if set up)...
git clone git@github.com:mmatokovic/dotfiles.git ~/.dotfiles

# ...or use HTTPS and switch remotes later.
git clone https://github.com/mmatokovic/dotfiles.git ~/.dotfiles
```

Create symlinks in the Home directory to the real files in the repo

```Bash
mklink ~/.dotfiles/.zshrc ~/.zshrc
mklink ~/.dotfiles/.gitconfig ~/.gitconfig
mklink ~/.dotfiles/Microsoft.PowerShell_profile.ps1 ~/Documents/WindowsPowerShell/Microsoft.PowerShell_profile.ps1
```

Enable hidden files on VS Code:

On Windows, in VS Code, go to `File` > `Preferences` > `Settings`. To display hidden.
Repo folder: `\source\repos`
