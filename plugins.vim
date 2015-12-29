call plug#begin()

" PLUGINS START

" Plugs that are needed for Git commit message

Plug 'nanotech/jellybeans.vim'
Plug 'tomasr/molokai'
Plug 'xolox/vim-misc'

" Other plugins

if g:is_not_git == 1
    " Language/format plugins
    Plug 'kchmck/vim-coffee-script'
    Plug 'tpope/vim-haml'
    Plug 'chrisbra/csv.vim'
    Plug 'pangloss/vim-javascript'
    Plug 'davidhalter/jedi-vim', { 'for': 'python' }
    Plug 'ecomba/vim-ruby-refactoring', { 'for': 'ruby' }

    " Framework/library plugins
    Plug 'tpope/vim-rails'
    Plug 'stefanoverna/vim-i18n'
    Plug 'tpope/vim-bundler'

    " UI plugins & Themes
    Plug 'majutsushi/tagbar'
    Plug 'scrooloose/nerdtree'
    Plug 'nathanaelkane/vim-indent-guides'
    Plug 'techlivezheng/vim-plugin-minibufexpl'
    Plug 'guns/xterm-color-table.vim'
    Plug 'bling/vim-airline'
    Plug 'guns/xterm-color-table.vim'

    Plug 'tpope/vim-fugitive'
    Plug 'scrooloose/syntastic'
    Plug 'xolox/vim-misc'
    Plug 'xolox/vim-notes'
    Plug 'xolox/vim-session'
    Plug 'mhinz/vim-signify'
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-endwise'
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'Lokaltog/vim-easymotion'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-repeat'
    Plug 'duggiefresh/vim-easydir'
    Plug 'tpope/vim-speeddating'
    Plug 'vim-scripts/matchit.zip'
    Plug 'mtth/scratch.vim'
    Plug 'sjl/gundo.vim'

    source ~/.vim/plugins.local.vim
endif


" PLUGINS END

call plug#end()
