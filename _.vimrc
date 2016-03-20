" No localization please
"language en_US

set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'mxw/vim-jsx'
Bundle 'elixir-lang/vim-elixir'
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'
Bundle 'jamessan/vim-gnupg'
Bundle "alfredodeza/khuno.vim"
Bundle 'mileszs/ack.vim'
Bundle 'tComment'
Bundle 'tpope/vim-fugitive'
Bundle 'majutsushi/tagbar'
Bundle 'kien/ctrlp.vim'
Bundle 'hynek/vim-python-pep8-indent'
Bundle 'nvie/vim-flake8'
Bundle 'mhinz/vim-signify'
Bundle 'moll/vim-bbye'
" Bundle 'matze/vim-move'
Bundle 'ingydotnet/yaml-vim'
Bundle 'sbl/scvim'
Bundle 'digitaltoad/vim-jade'
Bundle 'kchmck/vim-coffee-script'
Bundle 'guns/vim-clojure-static'
Bundle 'paredit.vim'
Bundle 'UltiSnips'
Bundle 'vim-less'
Bundle 'isRuslan/vim-es6'
" Bundle 'JavaScript-Indent'
Plugin 'honza/vim-snippets'
Plugin 'vim-auto-save'
Bundle 'mattn/emmet-vim'
" Bundle 'JavaScript-Indent'
" Bundle 'jelera/vim-javascript-syntax'
Bundle 'pangloss/vim-javascript'
" Bundle 'kchmck/vim-coffee-script'
" Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
"Bundle 'python-mode'
" Bundle 'scrooloose/nerdtree'
" Bundle 'scrooloose/syntastic'
" Bundle 'scrooloose/nerdtree'
" Bundle 'scrooloose/syntastic'
" Bundle 'easytags'
" Bundle 'bling/vim-airline'
" Bundle 'mustache/vim-mustache-handlebars'
" Bundle 'slim-template/vim-slim'
" Bundle 'VimClojure'
" Bundle 'pbrisbin/html-template-syntax'

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

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']

" Load skeleton
autocmd BufNewFile  *.html 0r ~/.vim/skeleton/skeleton.html
