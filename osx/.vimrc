set nu
set smartindent
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set hlsearch
nohl
map <F7> :tabp <Enter>
map <F8> :tabn <Enter>

filetype plugin indent on
syntax on
:au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
