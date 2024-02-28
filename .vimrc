execute pathogen#infect()
syntax on

" Space to toggle folds
nnoremap <Space> za
vnoremap <Space> za

" Better movement between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Adds date paste bound to F5
nnoremap <F5> ="strftime("%Y-%m-%d")<CR>P
iab <expr> dts strftime("%Y-%m-%d")

set pastetoggle=<F2>
set ruler
set background=dark
set shiftwidth=2
set softtabstop=2
set expandtab
set rnu

set nocompatible
if has ("autocmd")
  augroup templates
    autocmd BufNewFile *.py 0r ~/.vim/templates/skeleton.py|let fn=len(expand("%:t"))+2|exec "normal 4j$bc" . fn . "h " . expand("%:t") . " "
  augroup END
  filetype plugin indent on
endif

set laststatus=2
set statusline=
set statusline+=%#function#\ %l
set statusline+=\ %*
set statusline+=\ ««
set statusline+=\ %f\ %*
set statusline+=\ »»
set statusline+=\ %m
set statusline+=%#keyword#\ %F
set statusline+=%=
set statusline+=\ ««
set statusline+=\ %{strftime('%R',getftime(expand('%')))}
set statusline+=\ ::
set statusline+=\ %n
set statusline+=\ »»\ %*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['python']
let g:syntastic_python_python_exec = 'python3'

let g:airline_powerline_fonts = 1

augroup py-80col
    autocmd!
    autocmd FileType python set cc=80
augroup END

" make the 81st column stand out
" highlight ColorColumn ctermbg=magenta
" call matchadd('ColorColumn', '\%81v', 100)

" Open NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

autocmd VimEnter * colorscheme gruvbox
