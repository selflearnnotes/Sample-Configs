"use python3
 if exists('py2') && has('python')
    elseif has('python3')
 endif

 " Vundle
 " -----------------------------------------------------------------------
set nocompatible              " be iMproved, required
filetype off                  " required

 " set the runtime path to include Vundle and initialize
"set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=$HOME/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree.git'
Plugin 'davidhalter/jedi-vim'
Plugin 'xavierd/clang_complete'
Plugin 'yegappan/taglist.git'
Plugin 'jsfaint/gen_tags.vim.git'
Plugin 'Syntastic'
Plugin 'bling/vim-airline'
Plugin 'airblade/vim-gitgut'
Plugin 'dense-analysis/ale.git'
""Plugin 'ycm-core/YouCompleteMe.git'
Plugin 'neoclide/coc-tabnine.git'

call vundle#end()            " required
 "  " Vundle
 "  -----------------------------------------------------------------------
 "
 "  " file type and syntax highliting on
filetype plugin indent on
syntax on

" whitespaces
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
highlight ExtraWhitespace ctermbg=cyan guibg=cyan
autocmd InsertLeave * redraw!
match ExtraWhitespace /\s\+$\| \+\ze\t/
autocmd BufWritePre * :%s/\s\+$//e
colorscheme industry

" color scheme
""""""""color leet2

" sessions
noremap <F1> :mksession! .vim.session <cr>
noremap <F2> :source .vim.session <cr>
noremap <F3> :! rm .vim.session <cr>

" for autoread to auto load
au FocusGained,BufEnter * :silent! !
au FocusLost,WinLeave * :silent! w

 "  " specific settings
set fo+=t
set t_Co=256
set nocursorline
set title
set bs=2
set noautoindent
set ruler
set shortmess=aoOTI
set nocompatible
set showmode
set splitbelow
set nomodeline
set showcmd
set showmatch
set tabstop=4
set shiftwidth=4
set expandtab
set cinoptions=(0,m1,:1
set tw=80
set formatoptions=tcqro2
set smartindent
set laststatus=2
set nomodeline
set clipboard=unnamed
set softtabstop=2
set showtabline=1
set sidescroll=5
set scrolloff=4
set hlsearch
set incsearch
set ignorecase
set smartcase
set foldmethod=marker
set ttyfast
set history=10000
set hidden
""""set colorcolumn=81
""""set colorcolumn=81,+20
set colorcolumn=101
""""highlight ColorColumn ctermbg=lightgrey guibg=lightgrey
highlight ColorColumn ctermbg=grey guibg=grey
set number
set mouse=a
set complete=.,w,b,u,t
set completeopt=longest,menuone,preview
set noswapfile
set foldlevelstart=0
set wildmenu
set wildmode=list:longest,full
"" set list
"set listchars=eol:⏎,tab:␉·,trail:␠,nbsp:⎵
"set listchars=tab:>-
set clipboard=unnamedplus
set nowrap
set statusline=%{getcwd()}\/\%f%=%-14.(%l,%c%V%)\ %P
set autoread
set conceallevel=2
set concealcursor=vin
set cscopetag
set csprg=gtags-cscope
"set ctags=./tags,./TAGS ,tags,TAGS

" backup
set undodir=~/.vim/tmp/undo//
set backupdir=~/.vim/tmp/backup//
set directory=~/.vim/tmp/swap//

" make directories automatically if they don't already exist
if !isdirectory(expand(&undodir))
call mkdir(expand(&undodir), "p")
endif
if !isdirectory(expand(&backupdir))
call mkdir(expand(&backupdir), "p")
endif
if !isdirectory(expand(&directory))
call mkdir(expand(&directory), "p")
endif

" close brackets
:inoremap ( ()<Esc>i
:inoremap < <><Esc>i
:inoremap { {}<Esc>i
:inoremap [ []<Esc>i
:inoremap " ""<Esc>i
:inoremap ' ''<Esc>i
:inoremap ` ``<Esc>i

 " cursorline
au WinLeave * set nocursorline
au WinEnter * set cursorline
set cursorline

" clang stuff
let g:clang_library_path='/usr/lib/'
let g:clang_user_options='|| exit 0'
let g:clang_complete_auto = 0
let g:clang_compelte_macros=1
let g:clang_complete_copen = 0
let g:clang_debug = 1
let g:clang_snippets=1
let g:clang_conceal_snippets=1
let g:clang_snippets_engine='clang_complete'
let g:clang_auto_select = 1
let g:clang_use_library = 1
let g:clang_complete_optional_args_in_snippets = 1

" jedi
let g:jedi#completions_enabled = 1
let g:jedi#force_py_version = 3
cs add GTAGS
""""cs add cscope.out
