execute pathogen#infect()

set expandtab
" tab chars appear as 2 spaces
set tabstop=2
" set indent to correspond to a single tab (same num of spaces)
set shiftwidth=2
" numbers on 
" set number
" underline
set cursorline

" dir of currently editing file with returning to netrw
set autochdir

" show full path of editing file 
set statusline+=%F

" what time is it? 
map <F2> :echo 'Current time is ' . strftime('%c')<CR>

" back key, return to last buffer
map <F1> :b#<CR>

colorscheme elflord 

" enable mouse scroll in osx
set mouse=a

" send more characters for redraws
set ttyfast 

" default cursor options
highlight Cursor guifg=white guibg=black
highlight iCursor guifg=white guibg=steelblue
set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
set guicursor+=n-v-c:blinkon0
