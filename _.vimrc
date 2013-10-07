" No localization please
"language en_US

set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'
" Bundle 'scrooloose/nerdtree'
" Bundle 'scrooloose/syntastic'
Bundle "alfredodeza/khuno.vim"
Bundle 'mileszs/ack.vim'
Bundle 'jmartindf/vim-tcomment'
"Bundle 'python-mode'
Bundle 'tpope/vim-fugitive'
Bundle 'majutsushi/tagbar'
" Bundle 'easytags'
" Bundle 'UltiSnips'
Bundle 'kien/ctrlp.vim'
Bundle 'hynek/vim-python-pep8-indent'
Bundle 'nvie/vim-flake8'
Bundle 'bling/vim-airline'
Bundle 'mhinz/vim-signify'
Bundle 'moll/vim-bbye'
Bundle 'matze/vim-move'

" General options
filetype indent plugin on
syntax on
set vb t_vb="
set backspace=indent,eol,start 
set tabstop=8 expandtab shiftwidth=4 softtabstop=4
set hlsearch
set ruler
set mouse=a
set nonu
set incsearch
set wildignore=*.pyc
set t_Co=256
set showcmd

" Custom mappings
map <Leader>x :TComment<Return>
set pastetoggle=<Leader>p
cnoreabbr <expr> %% expand('%:p:h')

" Plugins config
hi SyntasticWarning ctermbg=blue ctermfg=white
let g:syntastic_python_checkers=['flake8']
map <leader>a <Esc>:Ack!
let g:ctrlp_extensions = ['tag']
let g:ctrlp_custom_ignore = ['tag']
" Map Shift-Space to open CtrlP in buffer mode
nnoremap <C-h> :CtrlPBuffer<CR>
hi DiffAdd term=bold ctermbg=2 guibg=4
let g:tagbar_sort = 0
set tags+=~/tags

" pdb breakpoint
map <Leader>d :call InsertPdbLine()<CR>

function! InsertPdbLine()
    let trace = expand("import pdb; pdb.set_trace()")
    execute "normal o".trace
endfunction

set laststatus=2

let g:move_key_modifier = 'C'
