if (Get-Command "choco" -ErrorAction SilentlyContinue)
{
    choco upgrade chocolatey
}
else
{
    iwr https://chocolatey.org/install.ps1 -UseBasicParsing | iex
}


choco install git powershell -y

$dotfiles_path = Join-Path -Path $env:UserProfile -Childpath dotfiles
if (!(Test-Path $dotfiles_path))
{
    git clone https://github.com/mmatokovic/dotfiles.git $dotfiles_path
}

function install_dotfiles
{
    # Find the symlinks and run them iteratively
    $symlinks = Get-ChildItem -Path . -Filter *.symlink -Recurse

    foreach ($symlink in $symlinks)
    {
        if (Test-Path $symlink -PathType Container)
        {
            Write-Host "Symlinked directories not yet supported"
        }
        else
        {
            $dotname = "." + [System.IO.Path]::GetFileNameWithoutExtension($symlink.Name)

            $target = $symlink.FullName
            $linkPath = Join-Path -Path $env:USERPROFILE -ChildPath $dotname

            New-Item -ItemType SymbolicLink -Path $linkPath -Target $target -Force
        }
    }
}

install_dotfiles
