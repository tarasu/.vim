# VIM Bundle for Ruby On Rails

## Requirements

Vim 7.3 or better

## Install

    cd ~/
    bash <(curl -s https://raw.githubusercontent.com/tarasu/vimfiles/master/installer.sh)

#### Install Dependacies

*MacOS*

    brew install ack
    brew install ctags

Note: MacOS comes with the BSD version of ctags which is not compatible.

*Ubuntu*

    sudo apt-get install exuberant-ctags
    sudo apt-get install ack-grep
    sudo ln -s /usr/bin/ack-grep /usr/local/bin/ack

## Update

    cd ~/.vim
    rake update

# TODO: Basic Mappings


The leader is mapped to `,`

### In Normal mode (`Esc` or `jj`)

`,p`     - File browser (NerdTree)

`,f`     - Find in Files (Command-t)

`Space`  - Search in buffer

`,a`     - Search in files (Ack)

`,b`     - Search open buffers (Fuzzy Finder)

`,d`     - close buffer

`,D`     - close all buffers

`,t`     - Show tags

`,Space` - Toggle comments (T-Comment)

`F5`     - Undo history (GUndo)

`F6`     - Auto format

`Tab`    - Next buffer

`Shift + Tab` - Previous buffer

`,,`     - Toggle between last two buffers

`,m`     - Jump to model

`,v`     - Jump to view

`,gm`    - Find in app/models

`,gc`    - Find in app/controller

`,gv`    - Find in app/views

`,gr`    - Open routes in split

`,gg`    - Open Gemfile in split

`,vir`   - Visual select inner Ruby block

`,var`   - Visual select around Ruby block

### In Insert mode (`i`)

`jj` - Back to normal mode

`<tab>` - auto complete or expand snippet

See `.vimrc` for more.

## Plugins

### rails

*Lots* of stuff - get to know this plugin!

`:Rmodel` - jump to model

`:Rview` - jump to view

`:help rails`

### coffee-script

CoffeeScript support

`:CoffeeCompile watch` show compiled js in split

https://github.com/kchmck/vim-coffee-script

### ruby-block

Provides text-objects for Ruby blocks

`var` (visual around Ruby)

`vir` (visual inner Ruby)

`ar` / `ir` (expand/contract selection)

`cir` (change inner Ruby)

`dar` (delete around Ruby)

http://vimcasts.org/blog/2010/12/a-text-object-for-ruby-blocks/

### fugitive

Git integration

*Lots* of stuff

`:Gstatus` and press `-` to stage file

http://vimcasts.org/episodes/fugitive-vim---a-complement-to-command-line-git/

`:help fugitive`

### command-t (`,f`)

Find files in your project with minimal keypresses

For example `conadus` would find `controllers/admin/users`

`,f path_or_filename`

`,gf path_or_filename` - restrict to files in current directory

`Ctrl + n` - next result

`Ctrl + p` - previous result

`Ctrl + c` - cancel

### snipmate (`TAB`)

Snippets, press `TAB` to expand

Examples (in a Ruby file):

`def<tab>`

`.each<tab>`

`.eado<tab>`

`ife<tab>`

### gundo (`F5`)

Navigate changes history tree

http://vimcasts.org/episodes/undo-branching-and-gundo-vim/

### tabular

Align stuff

http://vimcasts.org/episodes/aligning-text-with-tabular-vim/

### tcomment (`//`)

Comment/Uncomment stuff out

### yankring

Shows history of yanked (copied) text

Pressing `ctrl + p` will also cycle through paste history

### ack (`,a`)

Search project for text (aka find in files)

`,a word`

`,a "some words"`

### NerdTree (`<space>n`)

Project file browser

`<space>n` opens file browser

`<space>m` NerdTree menu

### surround (`ys`/`cs`/`ds`)

Allows adding/removing/changing of surroundings

I would highly recommend getting to know this plugin, it is very useful.
Especially when you grok text objects.

*Characters*

`ysiw)`    - surround inner word with `()`

`ysiw(`    - surround inner word with `(  )`

In the above example `iw` can be replaced with any text object or motion.

If you find yourself manually adding surroundings, stop and work out the
correct text object or motion.

`cs"'`     - change surrounding from `"` to `'`

`ds`       - delete surrounding

*Tags*

`yss<p>`  - surround line in `<p>` tags

`cst<div>` - change surround tag to `<div>`

### fuzzyfinder (`,b`)

Find open buffer by path/filename

### taglist (`,l`)

Lists method names, provide auto complete

Run `ctags -R` in project root to generate tags

### syntastic

Syntax checking

When a file is saved the syntax is automatically checked and any errors
reported.

### vundle

Plugin manager and part of the reason why my vimfiles as so compact
