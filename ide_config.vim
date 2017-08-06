" Airline options
if !exists('g:airline_symbols')
let g:airline_symbols = {}
endif

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#tab_min_count = 2

let g:airline_powerline_fonts = 1
let g:airline_section_c = airline#section#create(['%n', ' ', '%t'])
let g:airline#extensions#hunks#enabled = 1

" MiniBufExplorer options
let g:miniBufExplBuffersNeeded = 0
