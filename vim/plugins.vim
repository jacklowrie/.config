" Vundle setup
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

filetype off                  " required

" set XDG if not set
if !exists("$XDG_CONFIG_HOME")
    let $XDG_CONFIG_HOME=$HOME . "/.config/"
endif
if !exists("$XDG_STATE_HOME")
    let $XDG_STATE_HOME=$HOME . "/.local/state/"
endif
if !exists("$XDG_DATA_HOME")
    let $XDG_DATA_HOME=$HOME . "/.local/share/"
endif
if !exists("$XDG_CACHE_HOME")
    let $XDG_CACHE_HOME=$HOME . "/.cache/"
endif

set rtp+=$XDG_DATA_HOME/vim/Vundle.vim
call vundle#begin("$XDG_DATA_HOME/vim")
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'



" --------------------------------------------------------------------
Plugin 'garbas/vim-snipmate' " snippets
Plugin 'marcweber/vim-addon-mw-utils' " needed for snipmate
Plugin 'tomtom/tlib_vim' " needed for snipmate

Plugin 'sainnhe/everforest'   " color scheme
Plugin 'sheerun/vim-polyglot' " better syntax highlighting

Plugin 'tpope/vim-surround'   " iykyk
Plugin 'tpope/vim-vinegar'    " better netrw/file explorer

Plugin 'ctrlpvim/ctrlp.vim'   " better searching
" --------------------------------------------------------------------



" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin 
"
