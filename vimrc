"include other file
source $HOME/.vim/abbreviations.vim
set autoindent
filetype on " enable file type
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
"file op map
nnoremap <C-w> :w<cr> "<c-s> may hang terminal
vnoremap <C-c> y
inoremap <C-v> <ESC>P
vnoremap <C-x> x
set isfname +=32 " file name can contains space
"search 
set incsearch
"marks
highlight SignColumn guibg=darkgrey
sign define piet text=>> texthl=SignColumn
nnoremap <F7> :exe ":sign place 2 line=" .line(".") "name=piet file=" . expand("%:p")<cr>
nnoremap <C-F7> :sign unplace 2<cr>
"using file template
autocmd BufNewFile *  silent! call LoadTemplate("%:e")
function! LoadTemplate(extension)
	silent! execute "0r $HOME/.vim/templates/".a:extension.".tpl"
	silent! :execute "source $HOME/.vim/templates/".a:extension.".pattens.tpl"
endfunction
