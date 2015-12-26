call plug#begin()

" PLUGINS START

" Plugs that are needed for Git commit message

Plug 'nanotech/jellybeans.vim'
Plug 'tomasr/molokai'
Plug 'xolox/vim-misc'

" Other plugins

if $GIT_DIR == ''
    " Language/format plugins
    Plug 'kchmck/vim-coffee-script'
    Plug 'tpope/vim-haml'
    Plug 'chrisbra/csv.vim'
    Plug 'pangloss/vim-javascript'

    " UI plugins & Themes
    Plug 'majutsushi/tagbar'
    Plug 'scrooloose/nerdtree'
    Plug 'nathanaelkane/vim-indent-guides'
    Plug 'techlivezheng/vim-plugin-minibufexpl'
    Plug 'guns/xterm-color-table.vim'

    Plug 'xolox/vim-notes'
    Plug 'mhinz/vim-signify'
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-endwise'
    Plug 'kien/ctrlp.vim'
    Plug 'Lokaltog/vim-easymotion'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-repeat'
    Plug 'duggiefresh/vim-easydir'
    Plug 'tpope/vim-speeddating'
    Plug 'mtth/scratch.vim'
    Plug 'sjl/gundo.vim'

    source ~/.vim/plugins.local.vim
endif


" PLUGINS END

call plug#end()
