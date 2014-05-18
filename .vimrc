"set line numbers on
set number
set noswapfile
set expandtab
set sw=4
set sts=4
set tabstop=4    " Set the default tabstop
"set smarttab " Smarter tab levels

set nocompatible
set encoding=utf-8

set hlsearch    " highlight search
set ignorecase  " Do case in sensitive matching with
set smartcase
set incsearch
set wrapscan
set autoread " reload files when they change


" One of the most important options to activate. Allows you to switch from an
" unsaved buffer without saving it first. Also allows you to keep an undo
" history for multiple files. Vim will complain if you try to quit without
" saving, and swap files will keep you safe if your computer crashes.
set hidden

" Note that not everyone likes working this way (with the hidden option).
" Alternatives include using tabs or split windows instead of re-using the same
" window for multiple buffers, and/or:
" set confirm
" set autowriteall

" Better command-line completion
set wildmenu

" Show partial commands in the last line of the screen
set showcmd

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
"set autoindent

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

" Always display the status line, even if only one window is displayed
set laststatus=2

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Use visual bell instead of beeping when doing something wrong
set visualbell

" wrap, but only in the display, not in the file

set wrap
set linebreak
set list " show trailing whitespace
set textwidth=0
set wrapmargin=0
" indent wrapped lines
set showbreak=->
" set breakindent " not in main vim; need to compile with a patch

"Add golang syntax
filetype off
filetype plugin indent off
set runtimepath+=$GOROOT/misc/vim
filetype plugin indent on


syntax on



"setting up Vundle - the vim plugin bundler
    let iCanHazVundle=1
    let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
    if !filereadable(vundle_readme)
        echo "Installing Vundle.."
        echo ""
        silent !mkdir -p ~/.vim/bundle
        silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
        let iCanHazVundle=0
    endif
    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()
    Bundle 'gmarik/vundle'
    "Add your bundles here
    
    Bundle 'Syntastic' 
    Bundle 'altercation/vim-colors-solarized'
    Bundle 'https://github.com/tpope/vim-fugitive' 
    Bundle 'flazz/vim-colorschemes'
    Bundle 'scrooloose/nerdtree.git'
    Bundle 'jistr/vim-nerdtree-tabs'
    Bundle 'Blackrush/vim-gocode'
    Bundle 'fatih/vim-go'
    Bundle "myusuf3/numbers.vim"
    Plugin 'airblade/vim-gitgutter'
    if iCanHazVundle == 0
        echo "Installing Bundles, please ignore key map error messages"
        echo ""
        :BundleInstall
    endif
" Setting up Vundle - the vim plugin bundler end

color 256-jungle
color Monokai

" Set shortcuts

"Toggle NerdTree
map <C-n> :NERDTreeMirrorToggle<CR>
inoremap <Nul> <C-n>

if &term =~ '256color'
    " disable Background Color Erase (BCE) so that color schemes
    " render properly when inside 256-color tmux and GNU screen.
    " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
    set t_ut=
endif
