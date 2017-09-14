# oh-my-zsh: Installationspfad setzen
export ZSH=$HOME/.oh-my-zsh

# term: Angepasste TERM-Info-Konfiguration setzen (tic ~/terminfo.src)
export TERMINFO=$HOME/.terminfo

# oh-my-zsh: Name des Themas setzen
ZSH_THEME="powerlevel9k/powerlevel9k"

# Powerlevel9k: Schriftart-Quelle setzen
POWERLEVEL9K_MODE='nerdfont-complete'

# Powerlevel9k: Rechte Prompt-Anzeige deaktivieren
POWERLEVEL9K_DISABLE_RPROMPT=true

# Powerlevel9k: Nur die letzten beiden Verzeichnisse im Pfad anzeigen
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2

# Powerlevel9k: Linke Prompt-Anzeige konfigurieren
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon virtualenv dir dir_writable vcs)

# Powerlevel9k: Erstes Zeichen im Verzeichnispfad auslassen
POWERLEVEL9K_DIR_OMIT_FIRST_CHARACTER=true

# oh-my-zsh: Case-Sensitive Vervollstaendigung verwenden
CASE_SENSITIVE="true"

# oh-my-zsh: Automatische Update-Pruefung deaktivieren
DISABLE_AUTO_UPDATE="true"

# oh-my-zsh: Rote Punkte waehrend der Wartezeit der Vervollstaendigung anzeigen
COMPLETION_WAITING_DOTS="true"

# oh-my-zsh: Zeitstempel-Layout bei der history-Ausgabe definieren
HIST_STAMPS="yyyy-mm-dd"

# oh-my-zsh: Plugin Liste
plugins=(git proxy)

source $ZSH/oh-my-zsh.sh

# dircolors: Verzeichnis-Farbschema solarized-dark setzen
eval `dircolors ~/.dircolors`

# rvm: Pfad setzen
export PATH="$PATH:$HOME/.rvm/bin"

# pyenv: Pfad setzen
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

# pyenv: Shell-Umgebung konfigurieren
eval "$(pyenv init -)"

# adr-tools: Pfad setzen
export ADR_TOOLS_BIN_PATH="/usr/local/bin/adr-tools/src"
export PATH="$ADR_TOOLS_BIN_PATH:$PATH"

# zsh: extendedglob - fix problem with pattern matching sign ^
unsetopt nomatch
