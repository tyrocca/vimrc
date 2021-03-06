" for Vundle

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.


"""""""""""
" Styling "
"""""""""""

" Solarized
Plugin 'altercation/vim-colors-solarized'

" LightLine
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Tmux line
Plugin 'edkolev/tmuxline.vim'

" Mod8 (spacegray)
Plugin 'easysid/mod8.vim'

" Molokai
Plugin 'tomasr/molokai'

" Monokai
Plugin 'sickill/vim-monokai'

" Indent guide
Plugin 'Yggdroot/indentLine'

" CoffeeScript
Plugin 'kchmck/vim-coffee-script'

" CJSX
Plugin 'mtscout6/vim-cjsx'

" Stylus
Plugin 'wavded/vim-stylus'

" For coding in vim
"plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'

"""""""""""
" Editing "
"""""""""""

" Edit indent block
" ai – the current indentation level and the line above
" ii – the current indentation level excluding the line above
Plugin 'michaeljsmith/vim-indent-object'

" Commentout
Plugin 'scrooloose/nerdcommenter'

" Syntax highighting
Plugin 'scrooloose/syntastic'

" server auto complete < no dependent files
Plugin 'ervandew/supertab'

" jedi vim - make sure you pip jedi
"Plugin 'davidhalter/jedi-vim'

" YOU complete me!
"Plugin 'Valloric/YouCompleteMe'

" Surround
Plugin 'tpope/vim-surround'

" Emmet
Plugin 'mattn/emmet-vim'

" Multiple cursors
Plugin 'terryma/vim-multiple-cursors'

" ArgWrap - fix argument wrapping
Plugin 'FooSoft/vim-argwrap'

" Fuzzy finder
"Plugin 'vim-scripts/FuzzyFinder'


""""""""""""""""""""
" Navigation Tools "
""""""""""""""""""""

" plugin to control p
Plugin 'ctrlpvim/ctrlp.vim'

" tmux
Plugin 'christoomey/vim-tmux-navigator'

" Tagbar
" You need to install exuberant c tags
"     brew install ctags (mac)
"     sudo apt-get install exuberant-ctags (ubuntu)
"Plugin 'majutsushi/tagbar'

"Coffeescript tabbar
" install gem install CoffeeTags
"Plugin 'lukaszkorecki/CoffeeTags'

"File Insert
Plugin 'rking/ag.vim'

"NERD TREE
Plugin 'scrooloose/nerdtree'


""""""""""""""""""
" Misc Things... "
""""""""""""""""""

" Git tools
Plugin 'tpope/vim-fugitive'

" Vim Shell
Plugin 'Shougo/vimproc.vim'
Plugin 'Shougo/vimshell.vim'

""""""""""""""""""""""
"Useful vundle stuff "
""""""""""""""""""""""

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'

" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'

" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}


" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
"filetype plugin on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal

" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

""""""""""""""""""""
" Built in Toggles "
""""""""""""""""""""

"Colors
syntax enable
"colorscheme monokai
if ($USER == "ty" || $USER == "tyrocca")
    set t_Co=256
    set background=dark
    let g:solarized_termcolors=16
    colorscheme solarized
else
    colorscheme monokai
endif

"Spaces and Tabs
set tabstop=4 		" number of visual spaces per TAB
set softtabstop=4  	" number of spaces in tab when editing
set shiftwidth=4    " number of
set expandtab       	" tabs are spaces (tab button = spaces)
set colorcolumn=100      " keep within this column

"UI configs
set number 		" show line nums
set showcmd 		" show last entered command
set cursorline          " highlight current line
filetype indent on      " load filetype-specific indent files
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.
set showmatch 		" show matching ()
set mouse=a
set timeoutlen=1000 ttimeoutlen=0  " prevent slowdown

" http://usevim.com/2012/10/19/vim101-set-hidden/
set hidden
set history=100

"UX config

" Search
set incsearch           " search as characters are entered
set hlsearch            " highlight matches

"Searching
"set smartcase
"/copyright      " Case insensitive
"/Copyright      " Case sensitive
"/copyright\C    " Case sensitive
"/Copyright\c    " Case insensitive


" turn off search highlight
"Vim will keep highlighted matches from searches until you
"either run a new one or manually stop highlighting the old
"search with :nohlsearch. I find myself running this all
" the time so I've mapped it to <leader><space>.
nnoremap <leader><space> :nohlsearch<CR>i

"Smarter searching
":set smartcase
"/copyright      " Case insensitive
"/Copyright      " Case sensitive
"/copyright\C    " Case sensitive
"/Copyright\c    " Case insensitive

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use


""""""""""""""""
" Key Mappings "
""""""""""""""""

" I don't like <C-w> in insert mode so i remapped it
inoremap <silent> <C-w> <ESC><C-w>

" Mods for screen (so tmux is the same) 
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
"inoremap <C-e> <Esc>A
"inoremap <C-a> <Esc>I

" For toggling between tabs
"nnoremap <silent> <S-right> :tabn<CR>
"nnoremap <silent> <S-left> :tabp<CR>

"""""""""""""""""""""""
" Copying and pasting "
"""""""""""""""""""""""
"Paste toggle
set pastetoggle=<F2>

"Paste tools to personal clipboard
set clipboard=unnamed
vmap "+y :!xclip -f -sel clip
map "+p :r!xclip -o -sel clip

" Reselecting Pasted text
nnoremap <expr> gp '`[' . strpart(getregtype(), 0, 1) . '`]'

"""""""""""""""""""""
" Function Key Maps "
"""""""""""""""""""""
" Buffers
nnoremap <F5> :buffers<CR>:buffer<Space>

" Toggle foldmethod on
nnoremap <F8> :setlocal foldmethod=indent<CR>:setlocal foldignore= <CR>

" Launch vimrc
nnoremap <F9> :tabe ~/.vimrc<CR>

" f10 will strip out whitespace
"nnoremap <silent> <F10> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

"""""""""""""""""""""""
" Leader Key Mappings "
"""""""""""""""""""""""
" Make space also be leader
"map , <Leader>

" for inserting new lines (like <C-o>)
nnoremap <silent> <leader><CR> i<CR><ESC>


"""""""""""""""
" Plugin Mods "
"""""""""""""""

"""""""""""""""""""""""""""
" Modifications for CTRLP "
"""""""""""""""""""""""""""
"Accessing mru mode
nnoremap <silent> <leader>l :CtrlPMRU<CR>
nnoremap <silent> <leader>b :CtrlPBuffer<CR>

" Ignored files
"https://robots.thoughtbot.com/faster-grepping-in-vim
"Silver Searcher
if executable('ag')
    " Use ag over grep
    set grepprg=ag\ --nogroup\ --nocolor

    " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g "" --ignore={"*/cc/*","*/js/*","*/css/*","*/templates/media/*","*/individual_projects/*","*/static/data/*"}'

    " ag is fast enough that CtrlP doesn't need to cache
    "let g:ctrlp_use_caching = 0
else
    set wildignore+=*/tmp/*,app/amazon/,*/amazon/**,*/amazon/*,*/cc/*,*.so,*.swp,*.zip,*.pyc,*/.git
    let g:ctrlp_custom_ignore = {
      \ 'dir':  '\v[\/]\.(git|hg|svn)$',
      \ 'file': '\.pyc$'
      \ }
endif

" WHAT DOES THIS DO?
"if exists("g:ctrl_user_command")
    "unlet g:ctrlp_user_command
"endif

"""""""""""
" Airline "
"""""""""""
" For Airline
set laststatus=2

" For Airline
let g:airline_powerline_fonts = 1

" For TMUX plugin
let g:tmuxline_powerline_separators = 1

"""""""""""
" ArgWrap "
"""""""""""
" Command to exec
nnoremap <silent> <leader>a :ArgWrap<CR>

"""""""""""""
" Syntastic "
"""""""""""""
" for syntastic use f12
let g:syntastic_mode_map = { 'mode': 'passive' }
nnoremap <F10> :SyntasticToggleMode<CR>
nnoremap <F12> :update<CR>:SyntasticCheck<CR>  " Toggles Syntax check

"Ignore Errors
let g:syntastic_python_checkers = ["flake8"]
let g:syntastic_python_flake8_args = '--max-line-length=200 --ignore=W391'

""""""""""""""""""""
" Fugitive settings "
"""""""""""""""""""""
" by default is split
set diffopt+=vertical

""""""""""""""""
" Indent lines "
""""""""""""""""
" Disabled by default
let g:indentLine_enabled = 0
" Thing to speed up vim
let g:indentLine_faster = 1
" Toggle them on and off
nnoremap <F7> :IndentLinesToggle<CR>

"""""""""""""""
" Jedi Python "
"""""""""""""""
"let g:jedi#use_tabs_not_buffers = 1
"let g:jedi#popup_select_first = 0
"let g:jedi#popup_on_dot = 0

"""""""""""""
" Nerd Tree "
"""""""""""""
let NERDTreeMapActivateNode='<right>'
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>j :NERDTreeFind<CR>

""""""""
" TMUX "
""""""""
let g:tmux_navigator_no_mappings = 1
let g:tmux_navigator_save_on_switch = 1  " Save on close

nnoremap <silent> {Left-mapping} :TmuxNavigateLeft<cr>
nnoremap <silent> {Down-Mapping} :TmuxNavigateDown<cr>
nnoremap <silent> {Up-Mapping} :TmuxNavigateUp<cr>
nnoremap <silent> {Right-Mapping} :TmuxNavigateRight<cr>
nnoremap <silent> {Previous-Mapping} :TmuxNavigatePrevious<cr>

"""""""""""""""""
" Auto Commands "
"""""""""""""""""
" auto cmd to strip whitespace
"autocmd BufWritePre * :%s/\s\+$//e
function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction
autocmd BufWritePre *.py,*.js,*.coffee :call <SID>StripTrailingWhitespaces()

" open recent files if no file arg is passed
if len(argv()) == 0
    autocmd VimEnter * CtrlPMRU
endif

"""""""""""""""
" Misc things "
"""""""""""""""
" prevents writing stupid files
cabbrev w] w
cabbrev w\ w
cabbrev w' w

" make write actually write
command! W  write

"""""""""""
" Credits "
"""""""""""
" inspiration
" http://marcgg.com/blog/2016/03/01/vimrc-example/
