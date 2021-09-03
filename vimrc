"    ____                        _____
"   / __ \____ _____  ____  ____/__  /
"  / /_/ / __ `/ __ \/ __ \/ ___/ / / 
" / ____/ /_/ / / / / /_/ (__  ) / /__
"/_/    \__,_/_/ /_/\____/____/ /____/
"                
" vim-plug {{{

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
    " ---- nerdtree file system explorer. {{{
    Plug 'preservim/nerdtree'
    " }}}

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
    let g:UltiSnipsSnippetDirectories=["UltiSnips", "mycoolsnippets"]
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

    " ---- Ale Asynchronous Lint Engine in place of syntastic {{{
    Plug 'dense-analysis/ale'
    " }}}

    " ---- skywind3000/asyncrun.vim - run async shell commands in vim {{{
    Plug 'skywind3000/asyncrun.vim'
    " }}}

    " ---- vim-cmake - make working with CMake a little nicer {{{
    Plug 'vhdirk/vim-cmake'
    " }}}

    " ---- Git wrappers {{{
    Plug 'tpope/vim-fugitive'
    Plug 'idanarye/vim-merginal'
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
    let g:airline_theme='gruvbox'
    " }}}

    " ---- Tagbar: a class outline viewer for vim {{{
    Plug 'preservim/tagbar'
    " }}}

    " ---- vim-rainbow: Rainbow Parentheses {{{
        "  'frazrepo/vim-rainbow' had some conflicts with the spell checker for some files
        "   so I had to replace it with the following
    Plug 'luochen1990/rainbow' 
    " enable globally
    let g:rainbow_active = 1
    " }}}

" ---- Colorschemes {{{
      " ---- tender: Colorscheme for Vim {{{
      Plug 'jacoborus/tender.vim'
      " }}}

      " ---- purify: Colorscheme for Vim {{{
      Plug 'kyoz/purify', { 'rtp': 'vim' }
      " }}}

      " ---- vim-colors-solarized: Solarized Colorscheme for Vim {{{
      Plug 'altercation/vim-colors-solarized'
      " }}}

      " ---- gruvbox: Colorscheme for Vim {{{
      Plug 'morhetz/gruvbox'
      " }}}
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

    " ---- Markdown syntax highlighting, matching rules and mappings. {{{ 
    Plug 'plasticboy/vim-markdown'
    " }}} "

    " ---- Markdown Preview for (Neo)vim {{{ 
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
    " }}} "

    " ---- Easymotion - Vim motion on speed! {{{ 
    Plug 'easymotion/vim-easymotion'
    " }}} "


    " ---- Switch - Toggle booleans and more {{{ 
    Plug 'AndrewRadev/switch.vim'
    let g:switch_mapping = "-"
    " }}} "

    " ---- IncrementActivator - increment plugin{{{ 
    Plug 'nishigori/increment-activator'
    " }}} "

    " ---- vim-virtualenv' - working with venvs{{{ 
    Plug 'jmcantrell/vim-virtualenv'
    " }}} "


    " ---- vim-fontsize - adjust font size{{{ 
    Plug 'drmikehenry/vim-fontsize'

    " }}} "

    " ---- Vim-Jinja2-Syntax  - support Jinja2 suntax{{{ 
    Plug 'Glench/Vim-Jinja2-Syntax'

    " }}} /Vim-Jinja2-Syntax"

    " ---- abolish  - Tim pope's plugin for working with variants of a word{{{ 
    Plug 'tpope/vim-abolish'

    " }}} "

    " ---- vim-wiki {{{ 
    Plug 'vimwiki/vimwiki'
    " }}} "

    " ---- callendar-vim {{{
    Plug 'mattn/calendar-vim'
    " }}}

    " ---- task-wiki %integrate vim-wiki with taskwarrior {{{
    Plug 'tools-life/taskwiki'
    " }}}

    " ---- AnsiEsc %color text with Ansi escape sequences {{{
    Plug 'powerman/vim-plugin-AnsiEsc'
    " }}}
 
    " ---- vim-taskwarrior %a vim interface for taskwarrior {{{
    Plug 'farseer90718/vim-taskwarrior'
    " }}}
" Initialize plugin system
call plug#end()
" }}}

    set nocompatible "use vim, not vi settings

"Colors{{{
    set background=dark     " collorsceme
    colorscheme gruvbox
"}}}

" Spaces and Tabs{{{
    set tabstop=4      " number of visual spaces per TAB
    set softtabstop=4  " number of spaces in tab when editing
    set expandtab      " tabs are spaces
    filetype indent on " load filetype-specific indent files
    filetype plugin on
    set shiftwidth=2   " when indenting with '>' use two spaces width

    " Remove trailing white space, when coding
    autocmd FileType c,cpp,python autocmd BufWritePre <buffer> %s/\s\+$//e

"}}}

" Swap and Backup files {{{
    set directory=$HOME/.vim/swp//  " keep swap files in .vim/swp appending the file absolute directory    
    set nobackup            " disable backup
"}}}

" UI {{{
    set number              " show line numbers
    set relativenumber      " show absolute number only on cursor line 
    set showcmd             " show command in bottom bar
    set showmode            " always show current mode at the bottom
    set cursorline          " highlight current line

    set ruler               " always show cursor position

    set updatetime=100      " Wait time in ms for various operations. Also used by gitgutter.

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

    set tags=tags; " look for tags recursively in parent directories, (due to ';')

	set foldmethod=marker   " Use markers for folding


    " Disable gui menu and toolbar{{{
        set guioptions-=m
        set guioptions-=T
    "}}}
    "Maximize Gui size{{{
      if has("gui_running")
        " GUI is running or is about to start.
        " Maximize gvim window.
        set lines=999 columns=999
      endif
    "}}}

"}}}

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

" Leader {{{
     let mapleader="\<Space>"       
     let maplocalleader = ","
    " }}}

" Netrw {{{
    let g:netrw_browse_split = 4
    let g:netrw_winsize = 25

" }}}

" Spelling {{{
    let g:spellfile_URL = 'http://ftp.vim.org/vim/runtime/spell'
    set spell
    set spelllang=en
    set spelllang+=el
  " }}}

" Searching{{{
    set incsearch           " search as characters are entered
    set ignorecase          " ignore case when searching..           
    set smartcase           " unless you type a capital
    set hlsearch            " highlight matches
    "}}}

" Make :grep use ack {{{
    set grepprg=ack\ --nogroup\ --column\ $*
    set grepformat=%f:%l:%c:%m
"}}}

    " make it easy to use vim when typing greek {{{ 
    "
    set keymap=greek_utf-8
    set iminsert=0
    set imsearch=-1
  " }}}    

"Mappings {{{


    " jk is escape
    inoremap jk <esc>

  " Movement{{{
      " move vertically by visual line
      nnoremap j gj
      nnoremap k gk
      "}}}

    " close buffer without closing window
    nnoremap <Leader>q :Bdelete<CR>

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

    " navigation {{{

        " buffers{{{
            nnoremap <Leader>bn :bn<CR>| " go to next buffer
            nnoremap <Leader>bp :bp<CR>| " go to previous buffer
        "}}}

        " spelling {{{
          map <leader>sn ]s
          map <leader>sp [s
        "}}}

    " }}}

    " search and replace under cursor
    nnoremap <Leader>r :%s/\<<C-r><C-w>\>//g<Left><Left>

    " open terminal in vertical split
    nnoremap <Leader>t :vert term<CR>

    " highlight last inserted text
    nnoremap gV `[v`]

    " turn off search highlight
    nnoremap <leader>n :nohlsearch<CR>


    " populate command line with directive to switch to the bash buffer
    nnoremap <Leader>v :vert sb \!/bin/bash

    " easy to call pluggins {{{

        " ycm GoTo
        nnoremap gd :YcmCompleter GoTo<CR>


        " GtrlP
        nnoremap <Leader>. :CtrlPTag<CR>

        " Tagbar
        nnoremap <F8> :TagbarToggle<CR>
    "}}}
    " Font size  {{{
    nmap <silent> <Leader>=  <Plug>FontsizeBegin
    nmap <silent> <Leader>+  <Plug>FontsizeInc
    nmap <silent> <Leader>-  <Plug>FontsizeDec
    nmap <silent> <Leader>0  <Plug>FontsizeDefault
    " }}}

" }}}

" Latex {{{
let g:tex_flavor = 'latex'
let g:vimtex_view_general_viewer = 'okular'
let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'
let g:vimtex_view_general_options_latexmk = '--unique'
" let g:vimtex_view_method = skim
" let g:vimtex_view_automatic = 1 " prevent `latexmk` (or other build tools) from starting Skim 
let g:vimtex_complete_bib_simple = 1
" }}}

" Vim wiki {{{

    let wiki = {}
    let wiki.path = '~/vimwiki/'
    let wiki.syntax = 'markdown'
    let wiki.ext = '.wiki'

    let wiki.diary_caption_level = 2
    let wiki.auto_diary_index = 1
    let wiki.auto_tags = 1

    let g:vimwiki_list = [wiki]

    " Append wiki file extension to links in Markdown. This is needed for
    " compatibility with other Markdown tools.
    let g:vimwiki_markdown_link_ext = 1

"}}}

let g:netrw_browsex_viewer = "setsid xdg-open"

" vim:foldmethod=marker:foldlevel=0
