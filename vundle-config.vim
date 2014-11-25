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
Plugin 'mxw/vim-jsx'
Plugin 'mtscout6/vim-cjsx'

" Framework/library plugins
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-bundler'

" UI plugins & Themes

Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
Plugin 'nanotech/jellybeans.vim'
Plugin 'tomasr/molokai'
Plugin 'bling/vim-airline'

Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-notes'
Plugin 'xolox/vim-session'
Plugin 'mhinz/vim-signify'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-endwise'
Plugin 'xolox/vim-easytags'

" PLUGINS END

call vundle#end()
