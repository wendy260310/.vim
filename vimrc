"include other file
source abbreviations.vim
set autoindent
set nu "enable line number
syntax enable "enable syntax
colorscheme slate "scheme
match errorMsg /[^\t]\zs\t\+/ "match none indent tab
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\[HEX=\%02.2B]\ [POS=%04l,%04v]\ [%p%%]\ [LEN=%L] "status line configuration
set laststatus=2 "always show status line,change to 0
"track cursor
hi CursorLine ctermfg=none ctermbg=none cterm=bold guifg=white guibg=yellow gui=bold
hi CursorColumn ctermfg=none ctermbg=none cterm=bold guifg=white guibg=yellow gui=bold
set cursorline 
set cursorcolumn
"spell check options
set spell 
set spellsuggest=5
