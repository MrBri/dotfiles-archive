set nocompatible                        " Use Vim settings, rather then Vi settings (much better!).
                                        " This must be first, because it changes other options as a side effect.

filetype off                            " Required for vundle
set shell=bash                          " Make vim friendly with fishshell
set encoding=utf-8                      " Set default encoding to UTF-8
set noswapfile                          " Won't create an annoying temp swap file
set nobackup                            " Never let vim write a backup file, they did that in the 70's

set title                               " change the terminals title
set hidden                              " hide buffers instead of closing them
set history=1000                        " remeber more commands and search history
set undolevels=1000                     " use many muchos levels of undo
set wildmenu                            " Make the command-line completion better
set wildmode=list:longest               " List all matches
set clipboard=unnamed                   " Access the system clipboard

set rtp+=~/.vim/bundle/vundle/          " set the runtime path to include Vundle and initialize
call vundle#rc()

" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'
" All me plugins
Bundle 'altercation/vim-colors-solarized'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Bundle 'ctrlp.vim'
Bundle 'tComment'
Bundle 'scrooloose/syntastic'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'Shougo/neocomplete'
Bundle 'Shougo/neosnippet'
Bundle 'Shougo/neosnippet-snippets'
Bundle 'majutsushi/tagbar'
Bundle 'Raimondi/delimitMate'

filetype plugin indent on               " required for vundle, allow plugins

"" Plugin related settings
" solarized
set t_Co=256
syntax enable
set background=dark
colorscheme solarized

" Powerline
set laststatus=2                        " Always show status line, required for Powerline

" ctrlp
" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor  " Use Ag over Grep

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g "" --ignore "bower_components/" --ignore "node_modules/"'
  let g:ctrlp_use_caching = 0           " ag is fast enough that CtrlP doesn't need to cache
endif

" Syntastic
let g:syntastic_javascript_checkers = ['jscs', 'jshint']
let g:syntastic_mode_map = { 'mode': 'passive' }

" vim-indent-guides
" <Leader>ig

" neocomplete
let g:neocomplete#enable_at_startup = 1
" neosnippet
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)
" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"
" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif

" tagbar
nmap <F8> :TagbarToggle<CR>

"" Back to regular vim
let mapleader = " "

set number                              " Show line numbers
set numberwidth=3                       " Gutter
set ruler                               " Show line and column number

set pastetoggle=<F2>                    " Toggle auto-indenting, etc when pasting

"" Whitespace
set nowrap                              " don't wrap lines
set tabstop=2                           " a tab is two spaces
set shiftwidth=2                        " an autoindent (with <<) is two spaces
set expandtab                           " use spaces, not tabs
set backspace=indent,eol,start          " backspace through everything in insert mode

set scrolloff=3

set incsearch
set hlsearch
set ignorecase
set smartcase

" Toggle search highlighting
map <Leader>h :set invhls <CR>

set ttyfast                             " Send more characters for redraws
if has('mouse')
  set mouse=a                           " Make mouse feel more natural, enable in all modes
endif
set ttymouse=xterm2                     " Set to your terminal that supports mouse codes.

set splitbelow                          " Open new split panes to right and bottom, which feels more natural
set splitright

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

 " lets you use w!! to sudo after opening a file
cmap w!! w !sudo tee % >/dev/null

