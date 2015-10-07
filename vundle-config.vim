set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" PLUGINS START

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Language/format plugins
Plugin 'kchmck/vim-coffee-script'
Plugin 'tpope/vim-haml'
Plugin 'chrisbra/csv.vim'
Plugin 'pangloss/vim-javascript'

" UI plugins & Themes
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
Plugin 'nanotech/jellybeans.vim'
Plugin 'tomasr/molokai'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'techlivezheng/vim-plugin-minibufexpl'
Plugin 'guns/xterm-color-table.vim'

Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-notes'
Plugin 'mhinz/vim-signify'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-endwise'
Plugin 'kien/ctrlp.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'duggiefresh/vim-easydir'
Plugin 'tpope/vim-speeddating'
Plugin 'mtth/scratch.vim'
Plugin 'sjl/gundo.vim'

source ~/.vim/vundle-config-local.vim

" PLUGINS END

call vundle#end()
