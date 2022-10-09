# oh-my-zsh: Installationspfad setzen
export ZSH=$HOME/.oh-my-zsh

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
plugins=(git gitfast proxy kubectl vagrant poetry)

source $ZSH/oh-my-zsh.sh

# dircolors: Verzeichnis-Farbschema solarized-dark setzen
eval `dircolors ~/.dircolors`

# pyenv: Pfad setzen
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

# pyenv: Shell-Umgebung konfigurieren
eval "$(pyenv init -)"

# poetry: Pfad setzen
export PATH="$HOME/.poetry/bin:$PATH"

# adr-tools: Pfad setzen
export ADR_TOOLS_BIN_PATH="/usr/local/bin/adr-tools/src"
export PATH="$ADR_TOOLS_BIN_PATH:$PATH"

# golang: Pfad setzen
export GOLANG_BIN_PATH="$(go env GOPATH)/bin"
export PATH="$GOLANG_BIN_PATH:$PATH"

# zsh: extendedglob - fix problem with pattern matching sign ^
unsetopt nomatch

# function: download my first 200 public Github repositories
github-download-all-repos() {
    curl -s https://api.github.com/users/escalate/repos\?per_page\=200 | perl -ne 'print "$1\n" if (/"clone_url": "([^"]+)/)' | xargs -n 1 git clone
}

# function: git push with automated upstream tracking
gpb() {
    out="`git push 2>&1`"
    echo $out | grep -q "git push"
    if [ $? -eq 0 ]; then
        cmd="`echo $out | grep git | perl -pe 's/.*(git push --set-upstream.+)/$1/'`"
        eval $cmd
    else
        echo $out
    fi
}

# function: phpMyAdmin
phpmyadmin() {
    echo "Starting phpMyAdmin on http://localhost:8080"
    docker run \
      --rm \
      --init \
      --env=PMA_HOST=${PMA_HOST} \
      --env=PMA_ARBITRARY=1 \
      --publish=8080:80 \
      phpmyadmin/phpmyadmin:latest
}
