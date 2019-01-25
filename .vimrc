execute pathogen#infect()

set expandtab
" tab chars appear as 2 spaces
set tabstop=2
" fix annonying random tabs making
set softtabstop=0 
" set indent to correspond to a single tab (same num of spaces)
set shiftwidth=1
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

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use
"Then you can toggle folding with za. You can fold everything with zM and
"unfold everything with zR. zm and zr can be used to get those folds just
"right. Always remember the almighty help file at “help :folding” if you get
"stuck.
