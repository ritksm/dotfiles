" disable compatible
set nocompatible

" enable filetype detection
filetype off

" set up vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" BUNDLES {{{

"--------------
" Color Scheme
"--------------
Bundle 'rickharris/vim-blackboard'
Bundle 'altercation/vim-colors-solarized'
Bundle 'rickharris/vim-monokai'
Bundle 'tpope/vim-vividchalk'
Bundle 'Lokaltog/vim-distinguished'
Bundle 'tomasr/molokai'

"------------------
"" Code Completions
"------------------
Bundle 'Shougo/neocomplcache'
Bundle 'garbas/vim-snipmate'
Bundle 'ervandew/supertab'
Bundle 'honza/snipmate-snippets'
Bundle 'mattn/zencoding-vim'
" snipmate dependencies
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'

"-----------------
" Fast navigation
"-----------------
Bundle 'tsaleh/vim-matchit'
Bundle 'Lokaltog/vim-easymotion'

"--------------
"" Fast editing
"--------------
Bundle 'tpope/vim-surround'
Bundle 'scrooloose/nerdcommenter'
Bundle 'sjl/gundo.vim'
Bundle 'Raimondi/delimitMate'
Bundle 'godlygeek/tabular'
Bundle 'nathanaelkane/vim-indent-guides'


"----------------------------------------
" IDE features 
"----------------------------------------
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/syntastic'

"----------------------------------------
" Syntax/Indent for language enhancement
"----------------------------------------
" web backend
Bundle '2072/PHP-Indenting-for-VIm'
Bundle 'tpope/vim-rails'
Bundle 'beyondwords/vim-jinja2'
Bundle 'digitaltoad/vim-jade'
Bundle 'voithos/vim-python-syntax'
Bundle 'tmhedberg/SimpylFold'

" web front end
Bundle 'othree/html5.vim'
Bundle 'tpope/vim-haml'
Bundle 'nono/jquery.vim'
Bundle 'pangloss/vim-javascript'
Bundle 'kchmck/vim-coffee-script'
"Bundle 'groenewege/vim-less'
"Bundle 'wavded/vim-stylus'

" markup language
Bundle 'tpope/vim-markdown'

" Ruby
Bundle 'tpope/vim-endwise'

" Scheme
Bundle 'kien/rainbow_parentheses.vim'


filetype plugin indent on     " required!

" }}}
