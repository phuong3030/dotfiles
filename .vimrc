execute pathogen#infect('~/.vim/bundle/{}')
syntax on
filetype plugin indent on
filetype plugin on
if $COLORTERM == 'gnome-terminal' 
	set term=gnome-256color 
	colorscheme railscasts 
	else 
	colorscheme torte 
	endif 

set nowrap        " don't wrap lines
set backspace=indent,eol,start
                  " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                  "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                  "    shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type

set nobackup
set noswapfile
set laststatus=2

set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab

if exists('+colorcolumn')
	set colorcolumn=80
else
	au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif
set runtimepath^=~/.vim/bundle/ag
set clipboard=unnamed
let g:ackprg = 'Ag --vimgrep'
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
