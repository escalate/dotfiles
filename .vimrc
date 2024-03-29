" Syntax Highlighting aktivieren
syntax on

" Farbschema solarized-dark fuer Vim setzen
set background=dark
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

" Wild Menu aktivieren
set wildmenu

" Leerzeichen anstelle von Tabs schreiben
set expandtab

" 1 Tab == 2 Leerzeichen
set tabstop=2
set shiftwidth=2

" Intelligenter Einzug
set smartindent

" Suche startet direkt beim Tippen des Suchwortes
set incsearch

" Suchergebnisse hervorheben
set hlsearch

" F2-Taste fuer Paste-Mode-Schalter belegen
set pastetoggle=<F2>
