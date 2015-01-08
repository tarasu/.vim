set nocompatible               " be iMproved

if !isdirectory(expand("~/.vim/bundle/vundle/.git"))
  !git clone git://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
endif

filetype off                   " must be off before Vundle has run

set runtimepath+=~/.vim/bundle/vundle/

call vundle#rc()

Bundle 'gmarik/vundle' 

Bundle "git://github.com/mileszs/ack.vim.git"
Bundle "git://github.com/tpope/vim-fugitive"
Bundle "git://github.com/tpope/vim-rake.git"
Bundle "git://github.com/tpope/vim-rails.git"
Bundle "git://github.com/thoughtbot/vim-rspec.git"
Bundle "git://github.com/tpope/vim-dispatch.git"
Bundle "git://github.com/tpope/vim-surround.git"
Bundle "git://github.com/chrismetcalf/vim-yankring.git"
Bundle "git://github.com/chrismetcalf/vim-taglist.git"
Bundle "git://github.com/tpope/vim-endwise.git"
Bundle "git://github.com/scrooloose/syntastic.git"
Bundle "git://github.com/Townk/vim-autoclose.git" 
Bundle "git://github.com/scrooloose/nerdtree.git"
Bundle "git://github.com/scrooloose/nerdcommenter"
Bundle "git://github.com/sjl/gundo.vim.git"
Bundle "git://github.com/godlygeek/tabular.git"
Bundle "git://github.com/kien/ctrlp.vim"
Bundle 'git://git.wincent.com/command-t.git'
Bundle "git://github.com/jpo/vim-railscasts-theme"
Bundle "git://github.com/morhetz/gruvbox.git"
Bundle "git://github.com/fmoralesc/vim-vitamins.git"
Bundle "git://github.com/croaker/mustang-vim.git"
Bundle "git://github.com/vim-scripts/rdark.git"
Bundle "git://github.com/noahfrederick/vim-hemisu.git"
Bundle "git://github.com/tomasr/molokai"
Bundle "git://github.com/altercation/vim-colors-solarized.git"
Bundle "git://github.com/29decibel/codeschool-vim-theme"
Bundle "git://github.com/kana/vim-textobj-user.git"
Bundle "git://github.com/nelstrom/vim-textobj-rubyblock.git"
Bundle "git://github.com/ervandew/supertab.git"
Bundle "jQuery"
Bundle "git://github.com/kchmck/vim-coffee-script.git"
Bundle "git://github.com/pangloss/vim-javascript.git"
Bundle "git://github.com/cakebaker/scss-syntax.vim.git"
Bundle "git://github.com/slim-template/vim-slim"
Bundle "git://github.com/tpope/vim-haml.git"
Bundle "git://github.com/tpope/vim-markdown.git"
Bundle "git://github.com/Lokaltog/vim-powerline.git"
Bundle "git://github.com/tpope/vim-bundler.git"
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "honza/vim-snippets"
Bundle "garbas/vim-snipmate"

filetype plugin indent on     " and turn it back on!

runtime macros/matchit.vim    
