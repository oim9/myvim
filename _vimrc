cd ~
set hidden " hides buffers instead of closing them
set autochdir " changes working directory automatically

execute pathogen#infect()

"mappings
map <F2> :NERDTreeToggle<CR>
map <F3> :vsp<CR><C-W><C-W> " splits vertical and opens new file
set backspace=indent,eol,start

"cosmetics: 
set guifont=Consolas:h10:cANSI
set background=dark
colorscheme solarized
syntax on           " enable syntax processing
set number          " show line numbers
set showcmd         " show last command in bottom bar
set wildmenu        " visual autocomplete for command menu

set guioptions-=m "remove menu bar
set guioptions-=T "remove toolbar

"python:
set expandtab       " tabs are spaces
set tabstop=4       " spaces in tabs when reading a file
set softtabstop=4   " number of spaces in tab while editing 
set shiftwidth=4    " intendation
set showmatch       " show matching braces {[()]}

autocmd FileType python nnoremap <buffer> <F5> :w !python "%" <Enter>
autocmd FileType python let python_highlight_all = 1
filetype indent on  " load python indent file for every *.py file

