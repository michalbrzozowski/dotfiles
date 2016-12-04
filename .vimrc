" -----------------------------------------------------------------------------
" .vimrc
" -----------------------------------------------------------------------------

syntax on

set nocompatible
set path+=**
set wildmenu

" -----------------------------------------------------------------------------
" vundle plugin manager
" -----------------------------------------------------------------------------

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'morhetz/gruvbox'

call vundle#end()

filetype plugin indent on

" -----------------------------------------------------------------------------

set noerrorbells

set noswapfile
set showcmd
set ruler
set laststatus=2
set backspace=indent,eol,start
set ignorecase
set encoding=utf-8

set number
set linebreak
set smarttab

set incsearch
set showmatch
set hlsearch
set smartcase

set autoindent
" set smartindent
set shiftround
set tabstop=4
set shiftwidth=4
set expandtab
set nowrap
set cursorline
set list listchars=tab:»-,trail:-,extends:>,precedes:<,eol:¬
set list

set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

set background=dark

" colorscheme mekhai
" colorscheme jellybeans
" colorscheme gruvbox

if has("gui_running")
  if has("gui_gtk2")
    set guifont=Courier\ 10\ Pitch\ 10
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
else
  set t_Co=256
endif

" -----------------------------------------------------------------------------
" keybindings
" -----------------------------------------------------------------------------

" no operation remaps

" map <C-x> <Nop>
imap <C-s> <Nop>

no <down> <Nop>
no <up> <Nop>
no <left> <Nop>
no <right> <Nop>

ino <down> <Nop>
ino <up> <Nop>
ino <left> <Nop>
ino <right> <Nop>

" move line up / down
nnoremap <S-k> :m .-2<CR>==
nnoremap <S-j> :m .+1<CR>==
inoremap <C-k> <Esc>:m .-2<CR>==gi
inoremap <C-j> <Esc>:m .+1<CR>==gi
vnoremap <S-k> :m '<-2<CR>gv=gv
vnoremap <S-j> :m '>+1<CR>gv=gv

nnoremap <S-up> :m .-2<CR>==
nnoremap <S-down> :m .+1<CR>==
inoremap <S-up> <Esc>:m .-2<CR>==gi
inoremap <S-down> <Esc>:m .+1<CR>==gi
vnoremap <S-up> :m '<-2<CR>gv=gv
vnoremap <S-down> :m '>+1<CR>gv=gv


nnoremap <C-p> :find 

" movement between windows
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" nnoremap <C-down> <C-w>j
" nnoremap <C-up> <C-w>k
" nnoremap <C-left> <C-w>h
" nnoremap <C-right> <C-w>l

" plugin remaps
nmap <F8> :TagbarToggle<CR>
noremap <C-g> <C-]>
noremap <F2> :YcmCompleter GoToImprecise<CR>

nnoremap <F7> :make!<CR>

map <C-o> <Esc>:A<CR>
map <S-Tab> :bn<CR>
map <C-e> :bd<CR>
map <C-s> :update<CR>

" command remaps
command! W w
command! Q q

" -----------------------------------------------------------------------------
" plugin configuration
" -----------------------------------------------------------------------------

" let g:airline_left_sep = '|'
" let g:airline_right_sep = '|'
" 
" let g:airline_detect_modified=1
" 
" let g:airline_section_a = airline#section#create(['mode'])
" let g:airline_section_b = airline#section#create(['branch'])
" let g:airline_section_c = airline#section#create(['%{getcwd()}', '/', '%t'])
" let g:airline_section_x = airline#section#create(['filetype'])
" let g:airline_section_y = airline#section#create(['%l',':','%c'])
" let g:airline_section_z = '%{strftime("%c")}'

"let g:UltiSnipsExpandTrigger="<C-x>"
"let g:UltiSnipsJumpForwardTrigger="<C-b>"
"let g:UltiSnipsJumpBackwardTrigger="<C-z>"

"let $GIT_SSL_NO_VERIFY = 'true'
" -----------------------------------------------------------------------------
" scripts
" -----------------------------------------------------------------------------

if filereadable(".vimrc.project")
  so .vimrc.project
endif
