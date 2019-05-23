

"vim-plug

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
Plug 'lervag/vimtex'

" snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

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
    syntax on

    set backspace=indent,eol,start "allow backspacing over indentation linebreaks and insertion start.

    set wildmenu            " visual autocomplete for command menu

    set lazyredraw          " redraw only when we need to.

    set showmatch           " highlight matching [{()}]

    set autoread            " re-read files if modified outside vim

    set hidden              " send buffer to the background without writing to disk

    set laststatus=2        " always display status bar




    set noerrorbells visualbell t_vb=   " disable bip on errors and dont flash screen
        if has('autocmd')
          autocmd GUIEnter * set visualbell t_vb=
        endif

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
    nnoremap <C-J> <C-W><C-J>
    nnoremap <C-K> <C-W><C-K>
    nnoremap <C-L> <C-W><C-L>



" CtrlP settings
    let g:ctrlp_match_window = 'bottom,order:ttb'
    let g:ctrlp_switch_buffer = 0
    let g:ctrlp_working_path_mode = 0
    let g:ctrlp_user_command = 'find %s -type f'
    
" Latex

let g:tex_flavor = 'latex'

" Snippets
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

