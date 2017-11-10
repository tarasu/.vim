set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'git://github.com/mileszs/ack.vim.git'
Plugin 'git://github.com/wincent/command-t'
Plugin 'git://github.com/tomtom/tcomment_vim'
Plugin 'git://github.com/itchyny/lightline.vim'
Plugin 'git://github.com/scrooloose/nerdtree.git'
Plugin 'git://github.com/ervandew/supertab'
Plugin 'git://github.com/tpope/vim-fugitive'
Plugin 'git://github.com/airblade/vim-gitgutter'
Plugin 'git://github.com/terryma/vim-multiple-cursors'
Plugin 'git://github.com/tpope/vim-bundler.git'
Plugin 'git://github.com/tpope/vim-endwise'
Plugin 'git://github.com/vim-ruby/vim-ruby'
Plugin 'git://github.com/tpope/vim-rake.git'
Plugin 'git://github.com/tpope/vim-rails.git'
Plugin 'git://github.com/thoughtbot/vim-rspec.git'
Plugin 'git://github.com/scrooloose/syntastic.git'
Plugin 'git://github.com/ngmy/vim-rubocop'
Plugin 'git://github.com/slim-template/vim-slim'
Plugin 'git://github.com/kchmck/vim-coffee-script'

call vundle#end()            " required
filetype plugin indent on    " required


" VIM setting

filetype on
syntax on
set regexpengine=1
colorscheme Tomorrow-Night
set guifont=Menlo\ Regular:h18
set lines=48 columns=179
set colorcolumn=120
set number
let mapleader=" "

map <leader>s :source ~/.vimrc<CR>

set hidden
set history=100
filetype indent on
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent

autocmd BufWritePre * :%s/\s\+$//e
set hlsearch

nnoremap <Leader><Leader> :e#<CR>

set showmatch

set wildignore+=*.log,*.sql,*.cache
set backspace=2

" ACK
nnoremap <leader>a :Ack<space>

" CommandT
map <leader>gv :CommandTFlush<cr>\|:CommandT app/views<cr>
map <leader>gc :CommandTFlush<cr>\|:CommandT app/controllers<cr>
map <leader>gm :CommandTFlush<cr>\|:CommandT app/models<cr>
map <leader>gh :CommandTFlush<cr>\|:CommandT app/helpers<cr>
map <leader>ga :CommandTFlush<cr>\|:CommandT app/assets<cr>
map <leader>gw :CommandTFlush<cr>\|:CommandT app/workers<cr>
map <leader>gu :CommandTFlush<cr>\|:CommandT app/uploaders<cr>
map <leader>gd :CommandTFlush<cr>\|:CommandT app/decorators<cr>
map <leader>gs :CommandTFlush<cr>\|:CommandT app/services<cr>
map <leader>gl :CommandTFlush<cr>\|:CommandT lib<cr>
map <leader>gp :CommandTFlush<cr>\|:CommandT public<cr>
map <leader>gt :CommandTFlush<cr>\|:CommandT spec<cr>
noremap <Leader>r :CommandTFlush<CR>


" TComment
nnoremap // :TComment<CR>
vnoremap // :TComment<CR>


" NERDTree
let NERDTreeShowBookmarks = 0
let NERDChristmasTree = 1
let NERDTreeWinPos = "left"
let NERDTreeHijackNetrw = 1
let NERDTreeQuitOnOpen = 1
let NERDTreeWinSize = 30
let NERDTreeChDirMode = 2
let NERDTreeDirArrows = 1
let NERDTreeShowHidden=1
" Always open the tree when booting Vim, but don’t focus it:
" autocmd VimEnter * NERDTree
" autocmd VimEnter * wincmd p
let NERDTreeIgnore=['\.DS_Store', '\~$', '\.swp', '.git']
map <leader>n :NERDTreeToggle<cr>

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" let g:syntastic_haml_checkers = ['haml_lint'] " need install gem haml-lint

" status bar
set laststatus=2

set noswapfile

 let g:vimrubocop_keymap = 0 " need install gem rubocop
nmap <Leader>r :RuboCop<CR>
