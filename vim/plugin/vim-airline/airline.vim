" Show buffers opened
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t' " Show only the name of the buffer

" Change the separators to triangles
let g:airline_powerline_fonts = 1

let g:airline_extensions = ['tabline', 'branch', 'coc']

let g:airline_section_z = '%p%% ☰ %l/%L'

let g:airline#extensions#default#layout = [
    \ [ 'a', 'b', 'c' ],
    \ [ 'x', 'y', 'z']
    \ ]
