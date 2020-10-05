" vim-plug {{{

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
    " ---- vimtex {{{
    Plug 'lervag/vimtex'
    " }}}

    " ---- superTab {{{
    Plug 'ervandew/supertab'
    " }}}

    " ---- YouCompleteMe - A code-completion engine for Vim {{{
    Plug 'ycm-core/YouCompleteMe'
    " }}}

    " ---- snippets {{{
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
    " use numpy style docstrings
    let g:ultisnips_python_style="numpy"
    " If you want :UltiSnipsEdit to split your window.
    let g:UltiSnipsEditSplit="vertical"
    " }}}

    " ---- Buffer bye - delete buffers without closing windows {{{
    Plug 'moll/vim-bbye'
    " }}}

    " ---- Goyo - better control of window size {{{
    Plug 'junegunn/goyo.vim'
    " }}}

    " ---- Nerd Commenter {{{
    Plug 'scrooloose/nerdcommenter'
    " Add spaces after comment delimiters by default
    let g:NERDSpaceDelims = 1
    " Enable NERDCommenterToggle to check all selected lines is commented or not 
    let g:NERDToggleCheckAllLines = 1
    " }}}

    " ---- Mundo - visualize undo tree {{{
    Plug 'simnalamburt/vim-mundo'
    nnoremap <F5> :MundoToggle<CR>
    " }}}

    " ---- Vim-Unimpared - useful mappings {{{
    Plug 'tpope/vim-unimpaired' 
    " }}}

    " ---- vim-syntastic -  Martin Grenfell's syntax checker {{{
    Plug 'vim-syntastic/syntastic'
    " set statusline+=%#warningmsg#
    " set statusline+=%{SyntasticStatuslineFlag()}
    " set statusline+=%*

    let g:syntastic_always_populate_loc_list = 1
    let g:syntastic_auto_loc_list = 1
    let g:syntastic_check_on_open = 1
    let g:syntastic_check_on_wq = 1
    " }}}

    " ---- skywind3000/asyncrun.vim - run async shell commands in vim {{{
    Plug 'skywind3000/asyncrun.vim'
    " }}}

    " ---- vim-cmake - make working with CMake a little nicer {{{
    Plug 'vhdirk/vim-cmake'
    " }}}

    " ---- fugitive.vim - A Git wrapper {{{
    Plug 'tpope/vim-fugitive'
    " }}}

    " ---- surround.vim: quoting/parenthesizing made simple {{{
    Plug 'tpope/vim-surround'
    " }}}

    " ---- Active fork of kien/ctrlp.vim—Fuzzy file, buffer etc finder {{{
    Plug 'ctrlpvim/ctrlp.vim'
    " }}}

    " ---- eunuch.vim: Helpers for UNIX shell commands {{{
    Plug 'tpope/vim-eunuch'
    " }}}

    " ---- repeat.vim: Repeat plugin maps using the `.` command {{{
    Plug 'tpope/vim-repeat'
    " }}}

    " ---- tabular.vim: Text aligning tools {{{
    Plug 'godlygeek/tabular'
    " }}}"

    " ---- vim-airline: Lean & mean status/tabline for vim {{{
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    let g:airline_theme='base16_ashes'
    " }}}

    " ---- Tagbar: a class outline viewer for vim {{{
    Plug 'preservim/tagbar'
    " }}}

    " ---- vim-rainbow: Rainbow Parentheses {{{
    Plug 'frazrepo/vim-rainbow'
    " enable globally
    let g:rainbow_active = 1
    " }}}

    " ---- vim-colors-solarized: Solarized Colorscheme for Vim {{{
    Plug 'altercation/vim-colors-solarized'
    " }}}

    " ---- Auto Pairs: Insert or delete brackets, parens, quotes in pair {{{
    Plug 'jiangmiao/auto-pairs'
    " }}}

    " ---- A nicer Python indentation style for vim {{{
    Plug 'Vimjas/vim-python-pep8-indent'
    " }}}

    " ---- Gitgutter - A Vim plugin which shows a git diff in the sign column {{{
    Plug 'airblade/vim-gitgutter' 
    " }}}

    " ---- Markdown Preview for (Neo)vim {{{ 
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
    " }}} "


" Initialize plugin system
call plug#end()
" }}}

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

" Update time
    set updatetime=100      " Wait time in ms for various operations. Also used by gitgutter.

" UI Config
    set number              " show line numbers
    set relativenumber      " show absolute number only on cursor line 
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

    set autochdir           " change the current working directory whenever you open a file, switch buffers, delete a buffer or open/close a window.

    if !&scrolloff
      set scrolloff=3       " Minimal number of screen lines to keep above and below the cursor.
    endif
    if !&sidescrolloff
      set sidescrolloff=5   " The minimal number of screen columns to keep to the left and to the right of the cursor if 'nowrap' is set.  
    endif

    if &history < 1000
      set history=1000      " Determine number of entries of ":" commands and previous search patterns that is remembered.
	
    endif

	set foldmethod=marker   " Use markers for folding
    " No annoying sound on errors{{{
    set noerrorbells
    set novisualbell
    set t_vb=
    set tm=500
    
    " Properly disable sound on errors on MacVim
    if has('autocmd')
        autocmd GUIEnter * set vb t_vb=
    endif
    " }}}

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

" Leader Shortcuts {{{
    " local leader is comma
     let mapleader="\<Space>"       
     let maplocalleader = ","
    " }}}
    " jk is escape
    inoremap jk <esc>

"Mappings {{{
    nnoremap <Leader>w :w<CR>| " Save file
    nnoremap <Leader>{ o{<esc>o}<esc>O| " Insert c style curly bracket block

    "copy and paste {{{
    noremap <Leader>y "+y
    noremap <Leader>Y "+Y
    noremap <Leader>d "+d
    noremap <Leader>p "+p
    noremap <Leader>P "+P
    noremap <Leader>p "+p
    noremap <Leader>P "+P
    " }}}

    "change windows effectively {{{
    nnoremap <C-H> <C-W><C-H>
    nnoremap <C-J> <C-W><C-J>
    nnoremap <C-K> <C-W><C-K>
    nnoremap <C-L> <C-W><C-L>

    tnoremap <C-H> <C-W><C-H>
    tnoremap <C-J> <C-W><C-J>
    tnoremap <C-K> <C-W><C-K>
    tnoremap <C-L> <C-W><C-L>
    " }}}

    " buffer navigation {{{
    nnoremap <Leader>bn :bn<CR>| " go to next buffer
    nnoremap <Leader>bp :bp<CR>| " go to previous buffer
    " }}}

    " search and replace under cursor
    nnoremap <Leader>r :%s/\<<C-r><C-w>\>//g<Left><Left>

    " open terminal in vertical split
    nnoremap <Leader>t :vert term<CR>

    " tags
    set tags=tags; " look for tags recursively in parent directories, (due to ';')


    " make it easy to use vim when typing greek {{{ 
    set langmap=ΑA,ΒB,ΨC,ΔD,ΕE,ΦF,ΓG,ΗH,ΙI,ΞJ,ΚK,ΛL,ΜM,ΝN,ΟO,ΠP,QQ,ΡR,ΣS,ΤT,ΘU,ΩV,WW,ΧX,ΥY,ΖZ,αa,βb,ψc,δd,εe,φf,γg,ηh,ιi,ξj,κk,λl,μm,νn,οo,πp,qq,ρr,σs,τt,θu,ωv,ςw,χx,υy,ζz
    inoremap ξκ <esc>
  " }}}    

    " split vertically existing buffer.
    nnoremap <Leader>v :vert sb 

        
    " ycm GoTo
    nnoremap gd :YcmCompleter GoTo<CR>


    " GtrlP
    nnoremap <Leader>. :CtrlPTag<CR>

    " Tagbar
    nnoremap <F8> :TagbarToggle<CR>
" }}}
    " Latex {{{
let g:tex_flavor = 'latex'
let g:vimtex_view_general_viewer = '/Applications/Skim.app/Contents/SharedSupport/displayline'
let g:vimtex_view_general_options = '-r @line @pdf @tex'
let g:vimtex_view_general_options_latexmk = '-r 1'
" let g:vimtex_view_method = skim
" let g:vimtex_view_automatic = 1 " prevent `latexmk` (or other build tools) from starting Skim 
let g:vimtex_complete_bib_simple = 1
" }}}
" Remove trailing white space, when coding
autocmd FileType c,cpp,python autocmd BufWritePre <buffer> %s/\s\+$//e


" Filter Python flake8 messages
let g:syntastic_python_flake8_quiet_messages = {
    \ "!level":  "errors",
    \ "regex":   ['unexpected indentation (comment)', "set_trace' imported but unused"] }
