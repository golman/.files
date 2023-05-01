set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching
set hlsearch                " highlight search
set incsearch               " incremental search
set ignorecase              " case insensitive
set autoindent              " indent a new line the same amount as the line just typed
set expandtab               " converts tabs to white space
set tabstop=2               " number of columns occupied by a tab
set softtabstop=2           " see multiple spaces as tabstops so <BS> does the right thing
set shiftwidth=2            " width for autoindents
set number                  " add line numbers
set relativenumber          " relative numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=80                   " set an 80 column border for good coding style
set nowrap                  " nowrap
set noswapfile              " disable creating swap file
set backupdir=~/.cache/vim  " Directory to store backup files.
set completeopt=noinsert,menuone,noselect
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
" set mouse=v                 " middle-click paste with
" set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin indent on   " allow auto-indenting depending on file type
filetype plugin on
syntax on                   " syntax highlighting
set spell                   " enable spell check (may need to download language package)
