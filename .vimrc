set nocompatible              " be iMproved, required
filetype off                  " required
syntax on
set title     " change the termin's title
set visualbell " don't beep
set noerrorbells " don't beep
set ignorecase
set smartcase
set autoread
set hlsearch   " highlight search terms
set incsearch  " show search matches as you type
nnoremap <leader><F3> :set hlsearch!<CR>
set number   " always show line number
"let mapleader = \"\<Space>\"
let mapleader = ","
set nowrap    " don't wrap lines
set tabstop=4 shiftwidth=4 expandtab
set backspace=indent,eol,start " allow backspacing over everything
set autoindent   " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting 
set shiftround   " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch    " set show mathcing parenthesis
set mouse=a
" format code f7
map <F7> mzgg=G`z
" toogle case
imap <F8> <Esc>g~iwea
" quickly edit and reload vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>tv :tabn $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
" for quickly save file
nnoremap <leader>w :w<CR>
"use CTRL-S for saving, also in Insert mode
noremap <C-S> :update<CR>
vnoremap <C-S> <C-C>:update<CR>
inoremap <C-S> <C-O>:update<CR>

"for open a new file
nnoremap <leader>o :CtrlP<CR>

nnoremap x "_x
nnoremap d "_d
nnoremap D "_D
vnoremap d "_d

nnoremap <leader>d ""d
nnoremap <leader>D ""D
vnoremap <leader>d ""d

if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif

nnoremap <leader>zx :bp<CR> " previous reopen file
nnoremap <leader>mn :bn<CR> " next reopen file
nnoremap <leader>vb :noh<CR>
nnoremap <Leader>l :ls<CR>
nnoremap <Leader>g :e#<CR>
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>
"for moving line
nnoremap <leader>js :set syntax=javascript<CR>
nnoremap <m-j> :m .+1<CR>==
nnoremap <m-k> :m .-2<CR>==
inoremap <m-j> <Esc>:m .+1<CR>==gi
inoremap <m-k> <Esc>:m .-2<CR>==gi
vnoremap <m-j> :m '>+1<CR>gv=gv
vnoremap <m-k> :m '<-2<CR>gv=gv
colorscheme monokai
"Enter visual mode in double space
nnoremap <s-h> :vertical resize -10<CR>
nnoremap <s-l> :vertical resize +10<CR>
nmap <leader><leader> V
" terrymab/vim-exapnd-region plugin for selction map
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)
let g:ctrlp_user_command = 'find %s -type f | grep -v "`cat .ctrlpignore`"'
"for search and replace
vnoremap <silent> s //e<C-r>=&selection=='exclusive'?'+1':''<CR><CR>
    \:<C-u>call histdel('search',-1)<Bar>let @/=histget('search',-1)<CR>gv
omap s :normal vs<CR>


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe'
Plugin 'kien/ctrlp.vim'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdcommenter'
Plugin 'myusuf3/numbers.vim'
Plugin 'terryma/vim-expand-region'
Plugin 'pangloss/vim-javascript'
Plugin 'crusoexia/vim-javascript-lib'
Plugin 'scrooloose/syntastic'
" buffer switcher
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-airline/vim-airline'
Plugin 'owickstrom/vim-colors-paramount'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'crusoexia/vim-monokai'
Plugin 'mattn/emmet-vim'
Plugin 'gregsexton/MatchTag'
" Track the engine.
Plugin 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'
Plugin 'terryma/vim-smooth-scroll'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-repeat'
Plugin 'majutsushi/tagbar'
Plugin 'wting/gitsessions.vim'
Plugin 'mileszs/ack.vim'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ

" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
 let g:UltiSnipsExpandTrigger="<leader><tab>"
 let g:UltiSnipsJumpForwardTrigger="<c-b>"
 let g:UltiSnipsJumpBackwardTrigger="<c-z>"
"
" " If you want :UltiSnipsEdit to split your window.
 let g:UltiSnipsEditSplit="vertical"
 let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/UltiSnips']

"for vertical spilit Gdiff
 set diffopt+=vertical


" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Put your non-Plugin stuff after this line
map <leader>n  :NERDTreeToggle<CR>:NERDTreeMirror<CR>
nnoremap <F3> :NumbersToggle<CR>
nnoremap <F4> :NumbersOnOff<CR>
set runtimepath^=~/.vim/bundle/ctrlp.vim
" vim-javascript setup
let g:javascript_enable_domhtmlcss = 1
let g:airline#extensions#tabline#enabled = 1
set laststatus=2 " For airline

noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-f>d :call smooth_scroll#down(&scroll*2, 0, 4)<CR>

set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

nnoremap <leader>. :CtrlPTag<cr>
nnoremap <silent> <Leader>b :TagbarToggle<CR>
".vimrc
"map <c-f> :call JsBeautify()<cr>
"" or
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for json
autocmd FileType json noremap <buffer> <c-f> :call JsonBeautify()<cr>
" " for jsx
autocmd FileType jsx noremap <buffer> <c-f> :call JsxBeautify()<cr>
" " for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" " for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>
"syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_auto_jump = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
nnoremap <C-w>E :SyntasticCheck<CR> 
nnoremap <F6> :SyntasticToggleMode<CR>
nnoremap <leader>fg :Gstatus<CR>

nnoremap <leader>gss :GitSessionSave<cr>
nnoremap <leader>gsl :GitSessionLoad<cr>
nnoremap <leader>gsd :GitSessionDelete<cr>
