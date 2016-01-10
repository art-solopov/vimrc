" URL: http://vim.wikia.com/wiki/Example_vimrc
" Authors: http://vim.wikia.com/wiki/Vim_on_Freenode
" Description: A minimal, but feature rich, example .vimrc. If you are a
"              newbie, basing your first .vimrc on this file is a good choice.
"              If you're a more advanced user, building your own .vimrc based
"              on this file is still a good idea.

"------------------------------------------------------------
" Vim-specific features and options
if !has('nvim')
    " Set 'nocompatible' to ward off unexpected things that your distro might
    " have made, as well as sanely reset options when re-sourcing .vimrc
    set nocompatible

    " Better command-line completion
    set wildmenu

    " Show partial commands in the last line of the screen
    set showcmd

    " Allow backspacing over autoindent, line breaks and start of insert action
    set backspace=indent,eol,start

    " When opening a new line and no filetype-specific indenting is enabled, keep
    " the same indent as the line you're currently on. Useful for READMEs, etc.
    set autoindent

    " Always display the status line, even if only one window is displayed
    set laststatus=2

    " Enable use of the mouse for all modes
    set mouse=a
endif
"
" These options and commands enable some very useful features in Vim, that
" no user should have to live without.

" Enable syntax highlighting
syntax on

"------------------------------------------------------------
" Must have options {{{1
"
" These are highly recommended options.

" Vim with default settings does not allow easy switching between multiple files
" in the same editor window. Users can use multiple split windows or multiple
" tab pages to edit multiple files, but it is still best to enable an option to
" allow easier switching between files.
"
" One such option is the 'hidden' option, which allows you to re-use the same
" window and switch from an unsaved buffer without saving it first. Also allows
" you to keep an undo history for multiple files when re-using the same window
" in this way. Note that using persistent undo also lets you undo in multiple
" files even in the same window, but is less efficient and is actually designed
" for keeping undo history after closing Vim entirely. Vim will complain if you
" try to quit without saving, and swap files will keep you safe if your computer
" crashes.
set hidden

" Note that not everyone likes working this way (with the hidden option).
" Alternatives include using tabs or split windows instead of re-using the same
" window as mentioned above, and/or either of the following options:
" set confirm
" set autowriteall

" Modelines have historically been a source of security vulnerabilities. As
" such, it may be a good idea to disable them and use the securemodelines
" script, <http://www.vim.org/scripts/script.php?script_id=1876>.
" set nomodeline


"------------------------------------------------------------
" Usability options {{{1
"
" These are options that users frequently set in their .vimrc. Some of them
" change Vim's behaviour in ways which deviate from the true Vi way, but
" which are considered to add usability. Which, if any, of these options to
" use is very much a personal preference, but they are harmless.

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase


" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Use visual bell instead of beeping when doing something wrong
set visualbell

" And reset the terminal code for the visual bell. If visualbell is set, and
" this line is also included, vim will neither flash nor beep. If visualbell
" is unset, this does nothing.
set t_vb=

" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
set cmdheight=2

" Display line numbers on the left
set number

" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200

" Use <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F11>


"------------------------------------------------------------
" Indentation options {{{1
"
" Indentation settings according to personal preference.
set shiftwidth=4
set softtabstop=4
set expandtab

"------------------------------------------------------------
" Mappings {{{1
"
" Useful mappings

" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
map Y y$

" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-L> :nohl<CR><C-L>

" Copy current file path
nnoremap <Leader><C-e> :let @+ = expand("%")<CR>

" Map buffer switches
nnoremap <C-g><Right> :MBEbn<CR>
nnoremap <C-g><Left> :MBEbp<CR>
nnoremap <C-g>B :ls<CR>

" Map NERDTree
nnoremap <F5> :NERDTreeToggle<CR>
nnoremap <C-\><F5> :NERDTreeFind<CR>

" Map Tagbar
nnoremap <F8> :TagbarToggle<CR>

" Map open a file directory
nnoremap <C-g>D :exe 'e ' . expand('%:h')<CR>

" Map wiping out buffers
nnoremap <C-g>w :%bdelete<CR>
nnoremap <C-g>q :bdelete<CR>

" Gundo
nnoremap <F6> :GundoToggle<CR>

"CtrlP
nnoremap <C-g>p :CtrlPBuffer<CR>


"------------------------------------------------------------
" Python
python << endpython
import vim, os.path
from os import getcwd, environ
from hashlib import md5
# Set swap file directory with Python
cwd = getcwd()
m = md5()
m.update(cwd)
swd = m.hexdigest()
full_swd = os.path.join(environ['HOME'], '.vim', '.swap', swd)
if not os.path.exists(full_swd):
    os.makedirs(full_swd)
vim.options['backupdir'] = full_swd 
vim.options['directory'] = full_swd
endpython

"------------------------------------------------------------

let g:is_not_git=($GIT_DIR == '')

set t_Co=256
set t_ut=

" Plugins
runtime plugins.vim

" Folding
set foldmethod=syntax
set nofoldenable " disable folding

" Various UI options
colorscheme molokai

if g:is_not_git == 1

    " Autocomplete option
    set completefunc=syntaxcomplete#Complete

    " Ruby complete options
    let g:rubycomplete_buffer_loading = 1
    let g:rubycomplete_classes_in_global = 1
    let g:rubycomplete_rails = 1

    let g:session_autosave = 'no'
    set colorcolumn=80,120

    " Airline options
    if !exists('g:airline_symbols')
    let g:airline_symbols = {}
    endif

    let g:airline#extensions#tabline#enabled = 1
    let g:airline_left_sep=''
    let g:airline_right_sep='|'
    let g:airline#extensions#tabline#left_sep = ''
    let g:airline_right_sep = ''
    let g:airline_symbols.branch = 'ᛋ'
    let g:airline_symbols.linenr = '␤'
    let g:airline_section_c = airline#section#create(['%n', ' ', '%t'])
    let g:airline#extensions#hunks#enabled = 1
    let g:airline#extensions#tabline#show_buffers = 0
    let g:airline#extensions#tabline#tab_min_count = 2

    " MiniBufExplorer options
    let g:miniBufExplBuffersNeeded = 0

    let g:pymode_rope = 0

    " Documentation
    let g:pymode_doc = 1
    let g:pymode_doc_key = 'K'

    "Linting
    let g:pymode_lint = 1
    let g:pymode_lint_checker = "pyflakes,pep8"
    " Auto check on save
    let g:pymode_lint_write = 1

    let g:pymode_lint_cwindow = 1

    let g:pymode_lint_signs = 1
    let g:pymode_lint_todo_symbol = '△△'
    let g:pymode_lint_comment_symbol = '∙∙'
    let g:pymode_lint_visual_symbol = '∀∀'
    let g:pymode_lint_error_symbol = '!!'
    let g:pymode_lint_info_symbol = 'II'
    let g:pymode_lint_pyflakes_symbol = 'FF'

    " Support virtualenv
    let g:pymode_virtualenv = 1

    " syntax highlighting
    let g:pymode_syntax = 1
    let g:pymode_syntax_all = 1
    let g:pymode_syntax_indent_errors = g:pymode_syntax_all
    let g:pymode_syntax_space_errors = g:pymode_syntax_all

    " Don't autofold code
    let g:pymode_folding = 0

    " Buffer filetypes
    au BufRead,BufNewFile *.thor set filetype=ruby
    au BufRead,BufNewFile *.json.jbuilder set filetype=ruby
    au! BufNewFile,BufRead *.md set filetype=markdown

    " MiniBufExpl options
    hi MBEVisibleActiveNormal guifg=Yellow ctermfg=100

    " Surround.vim maps
    " Rspec
    let g:surround_114 = "it { \r }"

endif
