$Env:XDG_CONFIG_HOME = $Env:APPDATA

$Env:KOMOREBI_CONFIG_HOME = $Env:XDG_CONFIG_HOME
$Env:WHKD_CONFIG_HOME= $Env:XDG_CONFIG_HOME

$Env:EDITOR = "$env:LOCALAPPDATA\JetBrains\Toolbox\scripts\idea.cmd"

# Abilitate tab duplication on windows terminal
function prompt {
  $loc = $executionContext.SessionState.Path.CurrentLocation;

$out = ""
  if ($loc.Provider.Name -eq "FileSystem") {
    $out += "$([char]27)]9;9;`"$($loc.ProviderPath)`"$([char]27)\"
  }
  $out += "PS $loc$('>' * ($nestedPromptLevel + 1)) ";
  return $out
}

Import-Module -Name Terminal-Icons

Set-Alias vim nvim

oh-my-posh init pwsh --config "$HOME\AppData\Roaming\main.omp.json" | Invoke-Expression

