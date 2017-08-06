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
    Plug 'vim-ruby/vim-ruby'
    Plug 'tpope/vim-jdaddy'
    Plug 'slim-template/vim-slim'
    Plug 'mustache/vim-mustache-handlebars'


    " UI plugins & Themes
    Plug 'techlivezheng/vim-plugin-minibufexpl'
    Plug 'majutsushi/tagbar'
    Plug 'scrooloose/nerdtree'
    Plug 'nathanaelkane/vim-indent-guides'

    Plug 'tpope/vim-fugitive'
    Plug 'xolox/vim-notes'
    Plug 'xolox/vim-session'
    Plug 'mhinz/vim-signify'
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-endwise'
    Plug 'Lokaltog/vim-easymotion'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-repeat'
    Plug 'duggiefresh/vim-easydir'
    Plug 'vim-scripts/matchit.zip'
    Plug 'mtth/scratch.vim'
    " Plug 'sjl/gundo.vim'
    Plug 'simnalamburt/vim-mundo'
    Plug 'sirver/UltiSnips'
    Plug 'honza/vim-snippets'
    Plug 'AndrewRadev/splitjoin.vim'
    Plug 'tpope/vim-ragtag'
    Plug 'neomake/neomake'

    runtime plugins.local.vim

    if g:vim_ide == 1
        runtime plugins.ide.vim
    endif
endif


" PLUGINS END

call plug#end()
