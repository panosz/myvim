

"vim-plug

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
Plug 'lervag/vimtex'

"superTab
Plug 'ervandew/supertab'

" snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Buffer bye
" Bbye allows you to do delete buffers (close files) without closing your windows or messing up your layout.
Plug 'moll/vim-bbye'

" Goyo - better control of window size
Plug 'junegunn/goyo.vim'

" Nerd Commenter
Plug 'scrooloose/nerdcommenter'

    " Add spaces after comment delimiters by default
    let g:NERDSpaceDelims = 1
    " Enable NERDCommenterToggle to check all selected lines is commented or not 
    let g:NERDToggleCheckAllLines = 1



" Initialize plugin system
call plug#end()

    set nocompatible "use vim, not vi settings

"Colors
    set background=dark     " collorsceme
    colorscheme solarized


" Spaces and Tabs
    set tabstop=4       " number of visual spaces per TAB
    set softtabstop=4   " number of spaces in tab when editing
    set expandtab       " tabs are spaces


" Swap and Backup files 
    set directory=$HOME/.vim/swp//  " keep swap files in .vim/swp appending the file absolute directory    
    set nobackup            " disable backup

" UI Config
    set number              " show line numbers
    set relativenumber      " show absolute number on cursor line and relative numbers on all other lines
    set showcmd             " show command in bottom bar
    set showmode            " always show current mode at the bottom
    set cursorline          " highlight current line

    set ruler               " always show cursor position

    filetype indent on      " load filetype-specific indent files
    set shiftwidth=2        " when indenting with '>' use two spaces width
    syntax on
    set omnifunc=syntaxcomplete#Complete

    set backspace=indent,eol,start "allow backspacing over indentation linebreaks and insertion start.

    set wrap       
    set linebreak           " wrap lines at convenient points
    
    set wildmenu            " visual autocomplete for command menu

    set lazyredraw          " redraw only when we need to.

    set showmatch           " highlight matching [{()}]

    set autoread            " re-read files if modified outside vim

    set hidden              " send buffer to the background without writing to disk

    set laststatus=2        " always display status bar

    set mouse=a             " enable mouse for scrolling and resizing


    " No annoying sound on errors
    set noerrorbells
    set novisualbell
    set t_vb=
    set tm=500
    
    " Properly disable sound on errors on MacVim
    if has('autocmd')
        autocmd GUIEnter * set vb t_vb=
    endif

    " close buffer without closing window
    nnoremap <Leader>q :Bdelete<CR>


" netrw {{{
    let g:netrw_browse_split = 4
    let g:netrw_winsize = 20

" }}}


" spelling {{{
    let g:spellfile_URL = 'http://ftp.vim.org/vim/runtime/spell'
    set spell
    set spelllang=en
    set spelllang+=el

    " Shortcuts using <leader>
    map <leader>sn ]s
    map <leader>sp [s
" }}}

" Searching
    set incsearch           " search as characters are entered
    set ignorecase          " ignore case when searching..           
    set smartcase           " unless you type a capital
    set hlsearch            " highlight matches
    " turn off search highlight
    nnoremap <leader><space> :nohlsearch<CR>


" Movement
    " move vertically by visual line
    nnoremap j gj
    nnoremap k gk
    
     " highlight last inserted text
     nnoremap gV `[v`]

"Leader Shortcuts
    
    " leader is comma
     let mapleader="\<Space>"       
     let maplocalleader = ","
    
    " jk is escape
    inoremap jk <esc>

"Mappings
    nnoremap <Leader>w :w<CR> " Save file

    "copy and paste
    vmap <Leader>y "+y
    vmap <Leader>d "+d
    nmap <Leader>p "+p
    nmap <Leader>P "+P
    vmap <Leader>p "+p
    vmap <Leader>P "+P

    "change windows effectively
    nnoremap <C-H> <C-W><C-H>
    "nnoremap <C-J> <C-W><C-J>
    nnoremap <C-K> <C-W><C-K>
    nnoremap <C-L> <C-W><C-L>

    
" Latex

let g:tex_flavor = 'latex'
let g:vimtex_view_general_viewer = '/Applications/Skim.app/Contents/SharedSupport/displayline'
let g:vimtex_view_general_options = '-r @line @pdf @tex'
let g:vimtex_view_general_options_latexmk = '-r 1'
" let g:vimtex_view_method = skim
" let g:vimtex_view_automatic = 1 " prevent `latexmk` (or other build tools) from starting Skim 
let g:vimtex_complete_bib_simple = 1

" Snippets
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


