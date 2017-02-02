" No localization please
"language en_US

set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'
Bundle 'jamessan/vim-gnupg'
Bundle "alfredodeza/khuno.vim"
Bundle 'mileszs/ack.vim'
Bundle 'tComment'
Bundle 'tpope/vim-fugitive'
Bundle 'kien/ctrlp.vim'
Bundle 'hynek/vim-python-pep8-indent'
Bundle 'nvie/vim-flake8'
Bundle 'mhinz/vim-signify'
Bundle 'moll/vim-bbye'
Bundle 'isRuslan/vim-es6'
Plugin 'honza/vim-snippets'
Bundle 'mattn/emmet-vim'
Bundle 'pangloss/vim-javascript'
Bundle 'scrooloose/syntastic'
Bundle 'twitvim/twitvim'
Bundle 'leafgarland/typescript-vim'

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
set title
set ignorecase
set smartcase
filetype plugin indent on

" Custom mappings
map <Leader>x :TComment<Return>
set pastetoggle=<Leader>p
cnoreabbr <expr> %% expand('%:p:h')

" Plugins config
hi SyntasticWarning ctermbg=blue ctermfg=white
let g:syntastic_python_checkers=['flake8']
map <leader>a <Esc>:Ack!
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
let g:ctrlp_extensions = ['tag']
let g:ctrlp_custom_ignore = ['tag']
" Map Shift-Space to open CtrlP in buffer mode
nnoremap <C-h> :CtrlPBuffer<CR>
hi DiffAdd term=bold ctermbg=2 guibg=4
let g:tagbar_sort = 0
set tags+=~/tags

set laststatus=2

let g:move_key_modifier = 'C'

au BufNewFile,BufRead *.yaml,*.yml,*.sls    setf yaml

let g:sclangTerm = "gnome-terminal -x $SHELL -ic"

" AutoSave
let g:auto_save = 0
let g:auto_save_in_insert_mode = 0
let g:auto_save_silent = 1

" Allow JSX in normal JS files
let g:jsx_ext_required = 0

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_python_flake8_args='--ignore=E501,E225'
let g:syntastic_typescript_tsc_args='--jsx react'

" Load skeleton
autocmd BufNewFile  *.html 0r ~/.vim/skeleton/skeleton.html

let g:khuno_max_line_length=120

set statusline=[%n]\ %<%.99f\ %h%w%m%r%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%y%=%-16(\ %l,%c-%v\ %)%P
