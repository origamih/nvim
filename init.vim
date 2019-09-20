set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.local/share/nvim/plugged')
" Plugins
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary' " gc to comment out
Plug 'pangloss/vim-javascript'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'joshdick/onedark.vim'   " Atom-style dark theme
Plug 'scrooloose/nerdtree'
Plug 'eslint/eslint'
Plug 'w0rp/ale'
Plug 'scrooloose/nerdcommenter' 
Plug 'airblade/vim-gitgutter'
Plug 'mileszs/ack.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'mxw/vim-jsx'
Plug 'mattn/emmet-vim'
Plug 'leafgarland/typescript-vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }

" All of your Plugins must be added before the following line
call plug#end()            " required

filetype plugin indent on    " required
colorscheme sublimemonokai
syntax enable
" Set Airline bar theme
let g:airline_theme='bubblegum'

 
" --------------------------------
" Basic stuff
" --------------------------------
let g:mapleader = " " " Set leader to spacebar
set spelllang=en_gb
set backspace=indent,eol,start " Bring backspace to life
set number          " Line numbers
set relativenumber  " Relative line numbers
"set hlsearch        " Highlight whole word when searching
set ignorecase      " Ignore case when searching...
set smartcase       " ...except when serach query contains a capital letter
set autoread        " Auto load files if they change on disc

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0


" ALE config

let g:ale_lint_delay = 200 
" enable line numbers
let NERDTreeShowLineNumbers=1
" make sure relative line numbers are used
"autocmd FileType nerdtree setlocal relativenumber
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
let NERDTreeShowHidden=1
set tabstop=2 shiftwidth=2 expandtab
let g:ale_linters = {'javascript': ['eslint']}
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_working_path_mode = 0 " make ctrlp work from current dir

" Bring line up and down
"nnoremap <S-k> :m-2<CR>
"nnoremap <S-j> :m+<CR>
"inoremap <S-k> <Esc>:m-2<CR>
"inoremap <S-j> <Esc>:m+<CR>
nnoremap <S-j> :m .+1<CR>==
nnoremap <S-k> :m .-2<CR>==
inoremap <S-j> <Esc>:m .+1<CR>==gi
inoremap <S-k> <Esc>:m .-2<CR>==gi
vnoremap <S-j> :m '>+1<CR>gv=gv
vnoremap <S-k> :m '<-2<CR>gv=gv

" vim-airline config
let g:airline_powerline_fonts = 1
set guifont=MesloLGLDZForPowerline-Regular:h13

" Deoplete
let g:deoplete#enable_at_startup = 1
inoremap <Tab> <C-n>
