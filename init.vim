"Tabulación
set tabstop=2               " number of columns occupied by a tab 
set softtabstop=2           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=2            " width for autoindents
"inoremap <TAB> <C-T>        " TAB para tabular 2 espacios
"inoremap <S-TAB> <C-D>      " Shift + TAB para quitar el tabulado

set nocompatible            " disable compatibility to old-time vi
let mapleader=","           " cambiar el <Leader> de \ a , por ejemplo para ,cc (comentar)
set showmatch               " show matching 
set ignorecase              " case insensitive 
set hlsearch                " highlight search 
set incsearch               " incremental search
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=120                  " set an 80 column border for good coding style
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
" set spell                 " enable spell check (may need to download language package)
" set noswapfile            " disable creating swap file
" set backupdir=~/.cache/vim " Directory to store backup files.

set showcmd
set encoding=utf-8

" Plugins
call plug#begin('~/.vim/plugged')

  "TEMAS
  Plug 'sainnhe/gruvbox-material'
 
  "PLUGINS
  Plug 'vim-airline/vim-airline'        "Barra abajo 
  "Plug 'ervandew/supertab'              "Autocompletado con TAB de lo ya escrito
  Plug 'nvim-tree/nvim-web-devicons'    "Fuente: https://github.com/vorillaz/devicons/archive/master.zip
  Plug 'RRethy/vim-illuminate'          "Iluminar palabra bajo el cursor
  Plug 'preservim/nerdcommenter'        "Comentador automático según el lenguaje con 3,cc comenta 3 líneas. Con ,c[espacio] cambia de estado
  
  

  "Plug 'ryanoasis/vim-devicons'
  "Plug 'SirVer/ultisnips'
  "Plug 'honza/vim-snippets'
  "Plug 'scrooloose/nerdtree' "Árbol de archivos a la izquierda
  "Plug 'neoclide/coc.nvim', {'branch': 'release'}
  
  " LSC (autocompletado de lenguajes) Pendiente terminar instalación desde
  " yarn
  "Plug 'neovim/nvim-lspconfig'
  "Plug 'nvim-lua/completion-nvim'
  "Plug 'nvim-lualine/lualine.nvim'    "Barra abajo 
  
call plug#end()

" Configuración de Gruvbox
set background=dark
let g:gruvbox_material_background='medium'
colorscheme gruvbox-material

" Configuración de LSP
"lua << EOF
"require'lspconfig'.tsserver.setup{on_attach=require'completion'.on_attach}
"EOF


" Guardar y restaurar la posición del cursor
autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

set colorcolumn=0           " para eliminar el separador rojo vertical
"set cc=                     " para eliminar el separador rojo vertical
