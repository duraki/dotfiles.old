set exrc
set secure
set nocompatible
set noswapfile

if (has("termguicolors"))
    set termguicolors
endif

let mapleader = "\<Space>"

filetype plugin indent on
filetype plugin on

set autoread
set number
set relativenumber
set wrap
set linebreak
set nolist
set textwidth=0
set wrapmargin=0
set ruler
set showbreak=+++
set textwidth=100
set showmatch
set showcmd
set title
set showmode
set visualbell
set matchpairs+=<:>
set hlsearch
set ignorecase
set incsearch
nmap q :nohlsearch<CR>
set autoindent
set expandtab
set shiftwidth=4
set smartindent
set smarttab
set softtabstop=4
set wildmenu
set wildignore+=*.o,*.obj,*.bak,*.py[co],*.swp,*~,*.pyc,.svn,*/cm/log/**,tags,*.jpg,*.png,*.jpeg,*.png,*.mesh,build*/**,build/**,*.sublime-workspace,*.svg,.idea/**,.DS_Store
set lazyredraw
set confirm
set nobackup
set hidden
set history=150
set mouse=v

set listchars=tab:>-,extends:>,precedes:<
set tags=./tags;/

" ctrlpopts
let g:ctrlp_match_window = 'top,order:ttb,max:15,results:15'
let g:ctrlp_follow_symlinks = 1
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_custom_ignore = '\v[\/](vendor)$'
nnoremap <leader>. :CtrlPBufTag<cr>
nnoremap <leader>, :CtrlPTag<cr>
nnoremap <leader>q :CtrlPQuickfix<cr>
nnoremap <tab> :CtrlPBuffer<cr>
nnoremap <leader>a :CtrlPBuffer<cr>
nnoremap <leader>+ :marks<cr>

set pastetoggle=<F2>
set splitbelow
set splitright
syntax on

nnoremap <leader>sw :%s/\s\+$//<cr>:let @/=''<cr>

set background=dark

nmap ,e :NERDTreeToggle %<cr> 
autocmd VimEnter * wincmd p

set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent
set textwidth=80

set undolevels=1000
set backspace=indent,eol,start
set cursorline
colorscheme tender 

let g:airline_theme='minimalist'
set laststatus=2
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1

nmap <leader>t2 :set expandtab tabstop=2 shiftwidth=2 softtabstop=2<CR>
nmap <leader>t4 :set expandtab tabstop=4 shiftwidth=4 softtabstop=4<CR>

let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
let g:indent_guides_guide_size = 4

" tagbaropts
autocmd VimEnter * TagbarOpen
nmap <F8> :TagbarToggle<CR>
autocmd FileType php call SetPHPOptions() " toggle on php files
function! SetPHPOptions()
    :call tagbar#autoopen(0)
endfunction

set so=999 " use 5-10 to have it normal
nnoremap j gj
nnoremap k gk

" colors
set cc=80
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd guibg=#201f1f ctermbg=235
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#111010 ctermbg=237
highlight Pmenu guibg=#1C1C1C guifg=#979797 gui=bold
highlight ColorColumn ctermbg=gray
highlight SignColumn guibg=#1C1C1C
highlight Error guibg=#343434 guifg=#747474
highlight ErrorMsg guibg=#343435 guifg=#747474
highlight VertSplit guifg=#1F1717
highlight Normal guibg=#171717 ctermfg=251
set fillchars+=vert:\/

" fastswitch
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" terminal
tnoremap <Esc> <C-\><C-n>
set sh=/bin/zsh
autocmd VimEnter * nested vsplit term://zsh

" fix omni/supertab scroll
let g:SuperTabDefaultCompletionType = "<c-n>"

" fix for ale / lint
let g:airline#extensions#ale#enabled = 1

set t_Co=256
set t_ut=

" highlight active pane by RN
augroup BgHighlight
    autocmd!
    autocmd WinEnter * set relativenumber
    autocmd WinLeave * set norelativenumber
augroup END
