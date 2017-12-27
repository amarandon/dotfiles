" No localization please
"language en_US

"""""""""""""""""""
" Plugins loading "
"""""""""""""""""""

set nocompatible
filetype off


set shell=/bin/bash
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'tpope/vim-unimpaired'
Bundle 'sheerun/vim-polyglot'
Plugin 'slashmili/alchemist.vim'
Bundle 'mfukar/robotframework-vim'
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'
Bundle 'jamessan/vim-gnupg'
Bundle "alfredodeza/khuno.vim"
Bundle 'mileszs/ack.vim'
Bundle 'tComment'
Bundle 'tpope/vim-fugitive'
Bundle 'kien/ctrlp.vim'
Bundle 'vim-python/python-syntax'
Bundle 'hynek/vim-python-pep8-indent'
Bundle 'nvie/vim-flake8'
Bundle 'mhinz/vim-signify'
Bundle 'moll/vim-bbye'
Bundle 'isRuslan/vim-es6'
Bundle 'SirVer/ultisnips'
Bundle 'honza/vim-snippets'
Bundle 'mattn/emmet-vim'
Bundle 'pangloss/vim-javascript'
Bundle 'scrooloose/syntastic'
Bundle 'twitvim/twitvim'
Bundle 'leafgarland/typescript-vim'
Bundle 'christoomey/vim-tmux-navigator'

"""""""""""""""""""
" General options "
"""""""""""""""""""

filetype indent plugin on
syntax on
set vb t_vb="
set backspace=indent,eol,start 
set tabstop=8 expandtab shiftwidth=4 softtabstop=4
set ruler
set mouse=a
set nonu
set t_Co=256
set showcmd
set title
set ignorecase
set smartcase
set tags+=~/tags
set history=500  " Increase history size
" <C-p> / <C-n> is more convenient than arrow keys to navigate in command
" history but it doesn't do filtering. E
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
set hidden  " Don't loose undo history when switching buffers
filetype plugin indent on

" Search
set hlsearch
set incsearch
" <C-m> removes search highlighting
nnoremap <silent> <leader>m :<C-u>nohlsearch<CR>

" Command-Line completion
set wildignore=*.pyc

"" Status line
set laststatus=2
set statusline=[%n]\ %<%.99f\ %h%w%m%r%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%y%=%-16(\ %l,%c-%v\ %)%P

"" Colors
hi DiffAdd term=bold ctermbg=2 guibg=4

"" Custom mappings
map <Leader>x :TComment<Return>
set pastetoggle=<Leader>p
cnoreabbr <expr> %% expand('%:p:h')

"" HTML skeleton
autocmd BufNewFile  *.html 0r ~/.vim/skeleton/skeleton.html

"" Recognize yaml files
au BufNewFile,BufRead *.yaml,*.yml,*.sls    setf yaml

""""""""""""""""""
" Plugins config "
""""""""""""""""""

runtime macros/matchit.vim

"" Syntastic
hi SyntasticWarning ctermbg=blue ctermfg=white
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" Python
let g:syntastic_python_checkers=['flake8']
let g:syntastic_python_flake8_args='--ignore=E501,E225'
" JS
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_typescript_tsc_args='--jsx react'

"" For tmux-navigator, redraw screen after saving
"" Source: https://github.com/christoomey/vim-tmux-navigator/issues/57#issuecomment-197727175
autocmd BufWritePost * redraw!

"" Ack
map <leader>a <Esc>:Ack!
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

"" UltiSnips
let g:UltiSnipsListSnippets="<c-l>"

"" Ctrl-P
let g:ctrlp_extensions = ['tag']
let g:ctrlp_custom_ignore = ['tag']
" Map Shift-Space to open CtrlP in buffer mode
nnoremap <C-h> :CtrlPBuffer<CR>

let g:move_key_modifier = 'C'

" Allow JSX in normal JS files
let g:jsx_ext_required = 0

" Python syntaxt
let g:python_highlight_all = 1
