"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                   Plugins!
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" All of your Plugins must be added before the following line
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'google/vim-maktaba'
Plugin 'google/vim-glaive'
Plugin 'google/vim-codefmt'

Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }

call vundle#end()            " required
filetype plugin indent on    " required
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
let g:NERDCustomDelimiters = { 'python': { 'left': '#'} }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" 
let g:NERDTreeMapOpenInTab='<ENTER>'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_quiet_messages = {'!level':  'errors'}
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_python_flake8_args = "--max-line-length=80"

let g:airline_extensions = []

let g:python_pep8_indent_hang_closing = 1
let g:pymode_indent = 0

augroup autoformat_settings
  autocmd FileType bzl AutoFormatBuffer buildifier
  autocmd FileType c,cpp,proto,javascript AutoFormatBuffer clang-format
  autocmd FileType dart AutoFormatBuffer dartfmt
  autocmd FileType go AutoFormatBuffer gofmt
  autocmd FileType gn AutoFormatBuffer gn
  autocmd FileType html,css,json AutoFormatBuffer js-beautify
  autocmd FileType java AutoFormatBuffer google-java-format
  autocmd FileType python AutoFormatBuffer yapf
  " Alternative: autocmd FileType python AutoFormatBuffer autopep8
augroup END

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                 Vim Behavior
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if (!has('nvim'))
  set encoding=utf-8 fileencoding=utf-8 termencoding=utf-8  " saving and encoding can only be set on startup in NeoVim
endif

" set hidden                                                " don't unload buffer when switching away
set modeline                                              " allow per-file settings via modeline
set secure                                                " disable unsafe commands in local .vimrc files
set nobackup nowritebackup noswapfile autoread            " no backup or swap
set hlsearch incsearch ignorecase smartcase               " search
set wildmenu                                              " completion
set backspace=indent,eol,start                            " sane backspace
set clipboard=unnamedplus,unnamed                         " use the system clipboard for yank/put/delete
set mouse=a                                               " enable mouse for all modes settings
set nomousehide                                           " don't hide the mouse cursor while typing
set mousemodel=popup                                      " right-click pops up context menu
set ruler                                                 " show cursor position in status bar
set number                                                " show absolute line number of the current line
set nofoldenable                                          " I fucking hate code folding
set scrolloff=10                                          " scroll the window so we can always see 10 lines around the cursor
set textwidth=80                                          " wrap at 80 characters like a valid human
set printoptions=paper:letter                             " use letter as the print output format
set guioptions-=T                                         " turn off GUI toolbar (icons)
set guioptions-=r                                         " turn off GUI right scrollbar
set guioptions-=L                                         " turn off GUI left scrollbar
set winaltkeys=no                                         " turn off stupid fucking alt shortcuts
set laststatus=2                                          " always show status bar
set shell=bash
set cursorline

" check the parent directories for tags, too.
set tags=./tags,tags;$HOME

" middle-click paste
noremap! <s-insert> <middlemouse>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                  Appearance
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable
set background=dark
colorscheme solarized

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                  Formatting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set cindent
set cinkeys-=0#
set indentkeys-=0#
set shiftwidth=2 tabstop=2 softtabstop=2 expandtab autoindent
autocmd filetype c,asm,python setlocal shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType make setlocal noexpandtab

highlight OverLength ctermbg=8
match OverLength /\%81v.\+/

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                   Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <C-h> :tabp <Enter>
map <C-l> :tabn <Enter>
map <C-n> :NERDTreeTabsToggle<CR>
