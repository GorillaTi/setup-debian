"function
"       exe ?%s/specCURRENT_YEAR/? . strftime(?%Y?) . ?/ge?
"       exe ?%s/specRPM_CREATION_DATE/? . strftime(?%a\ %b\ %d\ %Y?) . ?/ge?
"       exe ?%s/specRPM_CREATION_AUTHOR_MAIL/? . login . ?@? . hostname . ?/ge?
"       exe ?%s/specRPM_CREATION_NAME/? . expand(?%:t:r?) . ?/ge?
"       setf spec
"endfunction

" enable syntax highlighting
syntax on

" automatically indent lines (default)
" set noautoindent

" select case-insenitiv search (not default)
" set ignorecase

" Mostrar numeracion de lineas
set number

" show cursor line and column in the status line
set ruler

" show matching brackets
set showmatch

" display mode INSERT/REPLACE/?
set showmode

" Powerline
"set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/

" Always show statusline
set laststatus=2

" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256
