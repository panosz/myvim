

"vim-plug

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
" ---- vimtex   ----
    Plug 'lervag/vimtex'

" ----  superTab ----
    Plug 'ervandew/supertab'

" ----- YouCompleteMe -A code-completion engine for Vim---
    Plug 'ycm-core/YouCompleteMe'

" ----   snippets ----
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
    " make YCM compatible with UltiSnips (using supertab)
    " via https://stackoverflow.com/a/22253548/6060982
    let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
    let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
    let g:SuperTabDefaultCompletionType = '<C-n>'
    let g:ycm_collect_identifiers_from_tags_files = 1 " read tag files

    " better key bindings for UltiSnipsExpandTrigger
    let g:UltiSnipsExpandTrigger = "<c-tab>"
    let g:UltiSnipsJumpForwardTrigger="<c-b>"
    let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" ----   Buffer bye ----
" Bbye allows you to do delete buffers (close files) without closing your windows or messing up your layout.
    Plug 'moll/vim-bbye'

" ----   Goyo - better control of window size ----
    Plug 'junegunn/goyo.vim'

" ----   Nerd Commenter -----
    Plug 'scrooloose/nerdcommenter'

    " Add spaces after comment delimiters by default
    let g:NERDSpaceDelims = 1
    " Enable NERDCommenterToggle to check all selected lines is commented or not 
    let g:NERDToggleCheckAllLines = 1


" ----   Mundo - visualize undo tree   ----
    Plug 'simnalamburt/vim-mundo'
    nnoremap <F5> :MundoToggle<CR>

" ---- Vim-Unimpared - useful mappings ---
    Plug 'tpope/vim-unimpaired' 

" ---- vim-syntastic -  Martin Grenfell's syntax checker --------
    Plug 'vim-syntastic/syntastic'
    " set statusline+=%#warningmsg#
    " set statusline+=%{SyntasticStatuslineFlag()}
    " set statusline+=%*

    let g:syntastic_always_populate_loc_list = 1
    let g:syntastic_auto_loc_list = 1
    let g:syntastic_check_on_open = 1
    let g:syntastic_check_on_wq = 1

" ---- skywind3000/asyncrun.vim - Run Async Shell Commands in Vim 8.0 and Output to Quickfix Window ----
    Plug 'skywind3000/asyncrun.vim'


" ---- vim-cmake - make working with CMake a little nicer -------     
    Plug 'vhdirk/vim-cmake'
"
" ---- fugitive.vim - A Git wrapper ----
    Plug 'tpope/vim-fugitive'
"
"
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

    set autochdir           "change the current working directory whenever you open a file, switch buffers, delete a buffer or open/close a window.



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
    let g:netrw_winsize = 25

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
    
    " local leader is comma
     let mapleader="\<Space>"       
     let maplocalleader = ","
    
    " jk is escape
    inoremap jk <esc>

"Mappings
    nnoremap <Leader>w :w<CR> " Save file

    "copy and paste
    noremap <Leader>y "+y
    noremap <Leader>Y "+Y
    noremap <Leader>d "+d
    noremap <Leader>p "+p
    noremap <Leader>P "+P
    noremap <Leader>p "+p
    noremap <Leader>P "+P

    "change windows effectively
    nnoremap <C-H> <C-W><C-H>
    nnoremap <C-J> <C-W><C-J>
    nnoremap <C-K> <C-W><C-K>
    nnoremap <C-L> <C-W><C-L>

    tnoremap <C-H> <C-W><C-H>
    tnoremap <C-J> <C-W><C-J>
    tnoremap <C-K> <C-W><C-K>
    tnoremap <C-L> <C-W><C-L>

    " buffer navigation
    nnoremap <Leader>bn :bn<CR> " go to next buffer
    nnoremap <Leader>bp :bp<CR> " go to previous buffer

    " search and replace under cursor
    nnoremap <Leader>r :%s/\<<C-r><C-w>\>//g<Left><Left>

    " open terminal in vertical split
    nnoremap <Leader>t :vert term<CR>

    " tags
    set tags=tags; " look for tags recursively in parent directories, (due to ';')


    " make it easy to use vim when typing greek {{{
    map α a
    map σ s
    map δ d
    map φ f
    map γ g
    map η h
    map ξ j
    map κ k
    map λ l
    map ς w
    map ρ r
    map τ t
    map υ y
    map θ u
    map ι i
    map ο o
    map π p
    map χ x
    map ψ c
    map β b
    map ν n
        
    map Α A
    map Σ S
    map Δ D
    map Φ F
    map Γ G
    map Η H
    map Ξ J
    map Κ K
    map Λ L
  " map Σ W
    map Ρ R
    map Τ T
    map Υ Y
    map Ι I
    map Ο O
    map Π P
    map Χ X
    map Ψ C
    map Β B
    map Ν N
    "}}}
        
" ycm GoTo
    nnoremap gd :YcmCompleter GoTo<CR>
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


" Remove trailing white space, when coding
autocmd FileType c,cpp,python autocmd BufWritePre <buffer> %s/\s\+$//e
