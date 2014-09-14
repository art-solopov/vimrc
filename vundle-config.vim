set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" PLUGINS START

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
" Plugin 'nanotech/jellybeans.vim'
Plugin 'tomasr/molokai'
Plugin 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}
Plugin 'chriskempson/base16-vim'
Plugin 'bling/vim-airline'

" PLUGINS END

call vundle#end()
