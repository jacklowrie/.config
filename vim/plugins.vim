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

" set the runtime path to include Vundle and initialize
set rtp+=$XDG_DATA_HOME/vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'



" --------------------------------------------------------------------
Plugin 'marcweber/vim-addon-mw-utils' " needed for snipmate
Plugin 'tomtom/tlib_vim' " utils for vim plugins. needed by snipmate

Plugin 'sainnhe/everforest'   " color scheme
Plugin 'sheerun/vim-polyglot' " better syntax highlighting

Plugin 'tpope/vim-surround'   " iykyk
Plugin 'tpope/vim-vinegar'    " better netrw/file explorer
Plugin 'garbas/vim-snipmate'  " snippet manager

Plugin 'ctrlpvim/ctrlp.vim'   " better searching
Plugin 'ervandew/supertab'    " insert-mode completions with tab
" --------------------------------------------------------------------



" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin 
"
