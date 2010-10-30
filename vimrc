call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set secure
set exrc

set sw=4 ts=4 sts=4 et

filetype plugin indent on
syntax on
set modeline

set wildmenu

set ignorecase
set smartcase

set scrolloff=2
set nowrap

set ruler

set hidden

nnoremap n :set hlsearch<cr>n
nnoremap / :set hlsearch<cr>/
nnoremap <silent> <cr> :noh<cr>
nnoremap <silent> <c-c> :noh<cr>
nnoremap j gj
nnoremap k gk

imap <c-z> <c-o>u
imap <c-y> <c-o><c-r>

"remap visual block command, enable common copy/paste keys
nnoremap VV <c-v>
vmap <c-c> "+y
nmap <c-v> "+p
imap <c-v> <esc><c-v>i

"ack & quickfix
nmap <a-a> :Ack 
nmap <a-n> :cn<cr>
nmap <a-N> :cp<cr>

let g:SuperTabDefaultCompletionType = "context"

"taglist.vim
nmap <F4> :TlistToggle<CR>
let Tlist_Exit_OnlyWindow = 1
let Tlist_WinWidth = "auto"

set t_Co=256
colors vividchalk

set laststatus=0

"buffer manipulation
nmap <silent> J :bp<cr>
nmap <silent> K :bn<cr>
nmap <a-d> :close<cr>
nmap T :CommandT<cr>
let g:miniBufExplMaxSize = 1
let g:miniBufExplMapWindowNavVim = 1

"tab manipulation
nmap <a-t> :tabnew<cr>
nmap <silent> <a-j> :gT<cr>

set mouse=a

"highlight text beyond allowed width
command! Hltw :execute("/\\%>" . &textwidth . "v.\\+")

"fugitive
nmap <F3> :Extradite<CR>

"gundo
nnoremap <F5> :GundoToggle<cr>

"nerdcommenter
map <c-x> <plug>NERDCommenterToggle

"gvim
set guioptions-=mrLtT
set guifont="Inconsolata Medium 12"

" single compile
nmap <F9> :w<CR>:SCCompile<CR>
au FileType cpp nmap <F9> :w<CR>:SCCompileAF -Wall -g<CR>

" camelcasemotion
nmap w ,w
nmap b ,b
nmap e ,e
nmap dw d,w
nmap db d,b
nmap de d,e
