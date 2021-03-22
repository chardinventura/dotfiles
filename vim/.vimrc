filetype plugin indent on

call plug#begin('~/.vim/plugged')

" Visual
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'lilydjwg/colorizer'

" Auto close parantheses
Plug 'jiangmiao/auto-pairs'

" File manager
Plug 'scrooloose/nerdtree'

" Search facilitator
Plug 'easymotion/vim-easymotion'

" Language Server Protocol
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Live html, css, and javascript
Plug 'turbio/bracey.vim', {'do': 'npm install --prefix server'}

call plug#end()

set clipboard=unnamedplus
set nowrap
set cursorline
set wildmenu
set undofile
set undodir=~/.vim/undodir
set number
set relativenumber
set numberwidth=1
set fillchars+=vert:\┊
set encoding=utf-8 " Enable use unicode
set splitbelow
set splitright
set tabstop=4
set shiftwidth=4
set nobackup
set nowritebackup

" Commands to show status
set showcmd " Show command typed
set noshowmode " Don't show mode in use

let mapleader=" "

nmap <F5> :source ~/.vimrc<CR>
vmap <F5> :source ~/.vimrc<CR>

" Disable directions keys in normal mode and visual
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

" Resize window
nnoremap <silent> <right> :vertical resize +5<CR>
nnoremap <silent> <left> :vertical resize -5<CR>
nnoremap <silent> <up> :resize +5<CR>
nnoremap <silent> <down> :resize -5<CR>

" Move between buffers
nnoremap  <Leader>d :bdelete<CR>

imap <C-N> <Esc>:bnext<CR>i
map <C-N> :bnext<CR>
imap <C-P> <Esc>:bprevious<CR>i
map <C-P> :bprevious<CR>

colorscheme desert

" Mark trailing spaces depending on whether we have a fancy terminal or not
if &t_Co > 2
	highlight ExtraWhitespace ctermbg=1
	match ExtraWhitespace /\s\+$/
else
	set listchars=trail:~
	set list
endif
