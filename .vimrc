execute pathogen#infect()
syntax on
set nocompatible
set nu
set ts=2
set sw=2
set hlsearch
"set laststatus=2
set cindent
set autoindent
set smartindent
set fileencodings=utf-8,euc-kr

" Coloring
set t_Co=256
set background=dark
colorscheme distinguished

" Preferences
set splitbelow
set splitright

" Foldmethod Setting
"setlocal foldmethod=expr
"setlocal foldexpr=(getline(v:lnum)=~'^$')?-1:((indent(v:lnum)<indent(v:lnum+1))?('>'.indent(v:lnum+1)):indent(v:lnum))
"set foldmethod=expr
"set foldexpr=(getline(v:lnum)=~'^$')?-1:((indent(v:lnum)<indent(v:lnum+1))?('>'.indent(v:lnum+1)):indent(v:lnum))
"set foldtext=getline(v:foldstart)
"set fillchars=fold:\ "(there's a space after that \)
"highlight Folded ctermfg=DarkGreen ctermbg=Black
autocmd BufReadPre * setlocal foldmethod=indent

"vim-javascript
let g:javascript_fold=1

" Easy Search
" set hlsearch
nnoremap <F8> :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hls<CR>
nnoremap <CR> :noh<CR><CR>

" for cs
autocmd BufRead *.cs set makeprg=gmcs\ %
autocmd BufRead *.cs nmap <F5> :!mono %:r.exe<CR>
autocmd BufRead *.cs nmap <F4> :make <CR>

" for c
autocmd BufRead *.c set makeprg=gcc\ -o\ %<.out\ %
autocmd BufRead *.c nmap <F5> :!./%<.out<CR>
autocmd BufRead *.c nmap <F4> :make <CR>

" for syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_html_tidy_ignore_errors = ["proprietary attribute \"ng-", "proprietary attribute \"ui-", "lacks \"action"]

"alias
:command Stm SyntasticToggleMode

" for Ycm
let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf=0
set completeopt-=preview

" omni complete
filetype plugin indent on
set omnifunc=syntaxcomplete#Complete

" for delimitMate
let delimitMate_quotes = ""

" for tern-for-vim
let g:tern_map_keys=1
let g:tern_show_argument_hints='on_hold'

" for keymap
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-J> <C-W><C-J>
inoremap <C-O> <C-X><C-O>
nmap <silent> <F5> :!open %<CR>	
imap <C-c> <CR><ESC>0
