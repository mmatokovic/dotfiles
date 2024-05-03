# Chocolatey CLI commands

[Install Chocolatey](https://chocolatey.org/install), from a Powershell **Administrator** console, simply do:

```ps1
Set-Location $env:USERPROFILE
If ( ! ( Test-Path $PROFILE ) ) { New-Item -Force -ItemType File -Path $PROFILE; Add-Content -Path $PROFILE -Encoding UTF8 -Value "# Powershell Profile"; }
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
RefreshEnv.cmd
```

Powershell Auto-Completion - open your $PROFILE and copy/paste the following lines:

```ps1
# Chocolatey
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
	Import-Module "$ChocolateyProfile"
}
```

List installed packeges

```ps1
choco list --localonly
```

Upgrade all packages

```ps1
choco upgrade all --noop
```

Search packages mentionning "zip"

```ps1
choco search zip
```

Install packages

```ps1
choco install googlechrome curl dbeaver docker-desktop git git.install autohotkey autohotkey.install golang hugo make mRemoteNG nmap nvm podman-cli python starship vlc wireguard eartrumpet hugo-extended repoz virtualbox vagrant jre8 7zip.install vscode
```

## Usage

| Command                                                     | Description                            |
| ----------------------------------------------------------- | -------------------------------------- |
| [list](https://chocolatey.org/docs/commands-list)           | lists remote or local packages         |
| [search](https://chocolatey.org/docs/commands-search)       | searches remote or local packages      |
| [info](https://chocolatey.org/docs/commands-info)           | retrieves package information          |
| [install](https://chocolatey.org/docs/commands-install)     | installs packages from various sources |
| [pin](https://chocolatey.org/docs/commands-pin)             | pins a package to suppress upgrades    |
| [outdated](https://chocolatey.org/docs/commands-outdated)   | retrieves packages that are outdated   |
| [upgrade](https://chocolatey.org/docs/commands-upgrade)     | upgrades packages from various sources |
| [uninstall](https://chocolatey.org/docs/commands-uninstall) | uninstalls a package                   |

See also the [Chocolatey Command Reference](https://chocolatey.org/docs/commands-reference) for a complete list.

## Examples

| Command                                        | Description                                      |
| ---------------------------------------------- | ------------------------------------------------ |
| **Find a package**                             |                                                  |
| `choco list`                                   | List all chocolatey packages                     |
| `choco search zip`                             | Search packages mentionning "zip"                |
| `choco search --by-tag compression`            | Search packages by their tags                    |
| `choco search --by-id-only zip`                | Search packages with "zip" in the package name   |
| `choco search --order-by-popularity zip`       | Filter and sort by package results by popularity |
| `choco search --approved-only zip`             | Only return approved packages                    |
| `choco info 7zip`                              | Get information about 7zip package               |
|                                                |                                                  |
| **Install**                                    |                                                  |
| `choco install 7zip`                           | Install                                          |
| `choco install 7zip --install-directory=P:\7z` | Install to a specific directory                  |
|                                                |                                                  |
| **Maintenance**                                |                                                  |
| `choco list --localonly`                       | List installed packages                          |
| `choco outdated`                               | List upgradable packages                         |
| `choco upgrade all -y`                         | Upgrade all packages                             |
|                                                |                                                  |
| **Pinning**                                    |                                                  |
| `choco pin list`                               | List pinned packages                             |
| `choco pin add --name 7zip`                    | Suppress upgrades for 7zip                       |
| `choco pin remove --name 7zip`                 | Supress upgrades supression for 7zip ;)          |

Prefered search method: `choco search --by-id-only --order-by-popularity --approved-only` searchstring

### Other Command line switches

| Switches                    | Description                                           |
| --------------------------- | ----------------------------------------------------- |
| `--help`                    | Prints out the help menu.                             |
|                             |                                                       |
| `--install-directory=`VALUE | Install Directory Override                            |
|                             |                                                       |
| `-y`, `--yes`               | Confirm all prompts.                                  |
| `-f`, `--force`             | Force the behavior.                                   |
| `--what-if`                 | Don't actually do anything, simulate.                 |
|                             |                                                       |
| `--execution-timeout=`VALUE | The time to allow a command to finish.                |
| `--fail-on-standard-error`  | Fail on standard error output (stderr).               |
| `--use-system-powershell`   | Execute PowerShell using an external process.         |
|                             |                                                       |
| `--debug`                   | Show debug messaging.                                 |
| `--verbose`                 | Show verbose messaging.                               |
| `--trace`                   | Show trace messaging.                                 |
| `--log-file=`VALUE          | Log File to output to in addition to regular loggers. |
|                             |                                                       |
| `--no-color`                | Do not show colorization in output.                   |
| `--limit-output`            | Limit the output to essential information.            |
| `--no-progress`             | Do not show download progress percentages.            |
|                             |                                                       |
| `--allow-unofficial-build`  | Allow the use of an unofficial build.                 |
