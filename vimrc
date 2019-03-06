set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'mileszs/ack.vim'
Plugin 'junegunn/fzf.vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'itchyny/lightline.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'morhetz/gruvbox'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-bundler.git'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-rake.git'
Plugin 'tpope/vim-rails.git'
Plugin 'thoughtbot/vim-rspec.git'
Plugin 'w0rp/ale'
Plugin 'ngmy/vim-rubocop'
Plugin 'sheerun/vim-polyglot'
Plugin 'nathanaelkane/vim-indent-guides.git'
Plugin 'chiel92/vim-autoformat'

call vundle#end()            " required
filetype plugin indent on    " required

set rtp+=/usr/local/opt/fzf



" VIM setting
filetype on
syntax on
let g:solarized_termcolors=16
set t_Co=256
set background=dark
colorscheme gruvbox
set regexpengine=1
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

" FZF
map <leader>gg :Files<cr>
map <leader>bb :Buffers<cr>
map <leader>tt :Tags<cr>
map <leader>gv :Files app/views<cr>
map <leader>gc :Files app/controllers<cr>
map <leader>gm :Files app/models<cr>
map <leader>gh :Files app/helpers<cr>
map <leader>ga :Files app/assets<cr>
map <leader>gw :Files app/workers<cr>
map <leader>gu :Files app/uploaders<cr>
map <leader>gd :Files app/decorators<cr>
map <leader>gs :Files app/services<cr>
map <leader>go :Files app/operations<cr>
map <leader>gr :Files app/resources<cr>
map <leader>gl :Files lib<cr>
map <leader>gp :Files public<cr>
map <leader>gt :Files spec<cr>
map <leader>gq :Files config<cr>

map <leader>fm :Autoformat<cr>


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

let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=235
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=235

" ALE color
highlight ALEWarning ctermbg=234

let $LANG = 'en_US'

let g:NERDTreeNodeDelimiter = "\u00a0"
