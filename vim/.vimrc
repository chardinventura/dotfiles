filetype plugin indent on

call plug#begin('~/.vim/plugged')

" Visual
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'
Plug 'lilydjwg/colorizer'
Plug 'sickill/vim-monokai'

" Auto close parantheses
Plug 'jiangmiao/auto-pairs'

" Git
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'

" File manager
Plug 'scrooloose/nerdtree'

" Search facilitator
Plug 'easymotion/vim-easymotion'

" Language Server Protocol
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

syntax enable
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

" Do vertical split
nnoremap <leader>vs :vsp 

" Do horizontal split
nnoremap <leader>sp :sp 

" Move between windows
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

" Move between buffers
nnoremap <Leader>b :buffers<CR>:buffer 
nnoremap  <Leader>d :bdelete<CR>

map <C-N> :bnext<CR>
map <C-P> :bprevious<CR>

imap <C-N> <Esc>:bnext<CR>i
imap <C-P> <Esc>:bprevious<CR>i

" Write, close, close unsafety and close safety
"nmap <Leader>w :w<CR>
"nmap <Leader>qq :q<CR>
"nmap <Leader>x :x<CR>

" Bug with background and suggetions menu
" colorscheme monokai

" Change background
set background="dark"

if &t_Co > 2
	syntax on
	silent! colorscheme dim
	set background=dark

	highlight Folded cterm=reverse ctermbg=0 ctermfg=8
	highlight VertSplit cterm=NONE ctermbg=NONE ctermfg=8
	highlight Conceal cterm=NONE ctermbg=NONE ctermfg=8

	highlight DiffAdd ctermfg=green cterm=bold
	highlight DiffDelete ctermfg=red cterm=bold
	highlight DiffChange ctermfg=yellow

	" Sometimes I see the syntax be out of sync
	noremap <F12> <Esc>:syntax sync fromstart<CR>
	inoremap <F12> <C-o>:syntax sync fromstart<CR>
endif

" Mark trailing spaces depending on whether we have a fancy terminal or not
if &t_Co > 2
	highlight ExtraWhitespace ctermbg=1
	match ExtraWhitespace /\s\+$/
else
	set listchars=trail:~
	set list
endif
