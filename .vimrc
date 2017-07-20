" Pathogen Plugin Manager laden
execute pathogen#infect()

" Syntax Highlighting aktivieren
syntax on

" Farbschema solarized-dark fuer Vim setzen
set background=dark
let g:solarized_termcolors=256
set t_Co=256
colorscheme solarized

" Farbschema solarized-dark fuer Airline setzen
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'
let g:airline_powerline_fonts=1

" Statuszeile immer anzeigen
set laststatus=2

" Modus-Anzeige deaktivieren
set noshowmode

" Dateitypbasierte Plugins aktivieren
filetype plugin on

" Dateitypbasierten Einzug aktivieren
filetype indent on

" Zeilennummern anzeigen
set number

" Wild Menu aktivieren
set wildmenu

" Leerzeichen anstelle von Tabs schreiben
set expandtab

" 1 Tab == 4 Leerzeichen
set tabstop=4
set shiftwidth=4

" Automatischer Einzug
set autoindent

" Intelligenter Einzug
set smartindent

" Suche startet direkt beim Tippen des Suchwortes
set incsearch
"
" Suchergebnisse hervorheben
set hlsearch
