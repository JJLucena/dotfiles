$Env:XDG_CONFIG_HOME = $Env:APPDATA

$Env:KOMOREBI_CONFIG_HOME = $Env:XDG_CONFIG_HOME
$Env:WHKD_CONFIG_HOME= $Env:XDG_CONFIG_HOME

$Env:EDITOR = "$env:LOCALAPPDATA\JetBrains\Toolbox\scripts\idea.cmd"

Import-Module -Name Terminal-Icons

Set-Alias vim nvim

oh-my-posh init pwsh --config "$HOME\AppData\Roaming\main.omp.json" | Invoke-Expression

