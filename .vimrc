
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-scripts/SmartColumnColor'
Plugin 'jdonaldson/vaxe'
Plugin 'majutsushi/tagbar'
Plugin 'djoshea/vim-autoread'
Plugin 'beyondmarc/glsl.vim'
Plugin 'raichoo/haskell-vim'

call vundle#end()

filetype plugin indent on


syntax on
let g:hybrid_use_Xresources = 1
colorscheme hybrid
set autoread
set noswapfile
set autowrite
set encoding=utf-8

set scrolloff=8
set showmode
set showcmd
set number
set relativenumber
set laststatus=2
set statusline=%f\ %l\|%c\ %m%=%p%%\ (%Y%R)

function! InsertStatuslineColor(mode)
  if a:mode == 'i'
    hi statusline guibg=Cyan ctermfg=4 guifg=Black ctermbg=0
  elseif a:mode == 'r'
    hi statusline guibg=Purple ctermfg=5 guifg=Black ctermbg=0
  else
    hi statusline guibg=DarkRed ctermfg=1 guifg=Black ctermbg=0
  endif
endfunction

au InsertEnter * call InsertStatuslineColor(v:insertmode)
au InsertChange * call InsertStatuslineColor(v:insertmode)
au InsertLeave * hi statusline ctermfg=6

hi statusline ctermfg=6

        set statusline+=%#warningmsg#
        set statusline+=%{SyntasticStatuslineFlag()}
        set statusline+=%*
    
set wildmenu
set wildmode=list:longest:full

"set list
"set listchars=tab:>─,eol:¬,trail:\ ,nbsp:¤

"set fillchars=vert:│

set statusline+=%{fugitive#statusline()}

let g:load_doxygen_syntax=1

set mouse=a

set showmatch

set wrap

set textwidth=79
"set cursorline

set ignorecase

set smartcase

set tabstop=8

set softtabstop=4

set shiftwidth=4

set expandtab

set smarttab

set autoindent

autocmd BufNewFile,BufReadPost *.md set filetype=markdown

autocmd BufNewFile,BufRead *.vp,*.fp,*.gp,*.vs,*.fs,*.gs,*.tcs,*.tes,*.cs,*.vert,*.frag,*.geom,*.tess,*.shd,*.gls,*.glsl set ft=glsl330

highlight LineNr ctermfg=3
highlight CursorLineNr ctermfg=Red

let g:syntastic_c_compiler='clang'
let g:syntastic_cpp_check_header=1

let g:haskell_enable_quantification=1
let g:haskell_enable_recursivedo=1
let g:haskell_enable_arrowsyntax=1


set undodir=~/.vim/undo
set undofile
