```bash
_________     _______________________
______  /_______  /___  __/__(_)__  /____________
_  __  /_  __ \  __/_  /_ __  /__  /_  _ \_  ___/
/ /_/ / / /_/ / /_ _  __/ _  / _  / /  __/(__  )
\__,_/  \____/\__/ /_/    /_/  /_/  \___//____/
```

## Install

Using bootstrap script

```Bash
Set-ExecutionPolicy RemoteSigned
iwr https://raw.githubusercontent.com/lukesmith/dotfiles/master/script/bootstrap.ps1 -UseBasicParsing | iex
streamline-linux
```

### Manualy

Clone repo into new directory `~/dotfiles`

```Bash
# Use SSH (if set up)...
git clone git@github.com:mmatokovic/dotfiles.git ~/dotfiles

# ...or use HTTPS and switch remotes later.
git clone https://github.com/mmatokovic/dotfiles.git ~/dotfiles
```

Create symlinks in the Home directory to the real files in the repo

```Bash
# PowerShell in Administrator mode
New-Item -ItemType SymbolicLink -Path "~/.gitconfig" -Target "~/dotfiles/.gitconfig"
New-Item -ItemType SymbolicLink -Path "~/.ideavimrc" -Target "~/dotfiles/.ideavimrc"
```

Enable hidden files on VS Code:

1. On Windows, in VS Code, go to `File` > `Preferences` > `Settings`. To display hidden.
2. Create a repo folder: `mkdir ~/source/repos`
