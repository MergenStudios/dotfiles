# starship config
$ENV:STARSHIP_CONFIG = "$HOME\.config\starship\starship.toml"
Invoke-Expression (&starship init powershell)
$env:VIRTUAL_ENV_DISABLE_PROMPT = 1

# misc aliases
Set-Alias -Name exp -Value explorer.exe
Set-Alias -Name acv -Value .\.venv\Scripts\activate
Set-Alias -Name n -Value nvim

# this cant be an alias because it involves a pipe
function cpwd {
    (Get-Location).Path | Set-Clipboard -NoNewline
}