" map
map ; :
nnoremap <silent> ref<CR> :source ~/.vimrc<CR>
nnoremap <silent> qr :QuickRun<CR>

nnoremap <silent> ff :FufFile<CR>
nnoremap <silent> fb :FufBuffer<CR>
nnoremap <silent> fl :FufLine<CR>
nnoremap <silent> fub :FufBookmarkDir<CR>
nnoremap <silent> fua :FufBookmarkDirAdd<CR>

nmap <ESC><ESC> :nohlsearch<CR>
inoremap <C-a> <Esc>I
inoremap <C-e> <Esc>A
inoremap <C-f> <Right>
inoremap <C-b> <Left>
inoremap <C-h> <BackSpace>
inoremap <C-d> <Del>
inoremap ' ''<Left>
inoremap '' ''
inoremap " ""<Left>
inoremap "" ""
inoremap { {}<Left>
inoremap {} {}
inoremap {<Return> {<Return>}<Esc>==O
inoremap ( ()<Left>
inoremap () ()
inoremap (<Return> (<Return>)<Esc>==O
inoremap [ []<Left>
inoremap [] []
inoremap [<Return> [<Return>]<Esc>==O
inoremap ( ()<Left>
inoremap , ,<Space>
inoremap ,<Return> ,<Return>
inoremap ` ``<Left>
inoremap `` ``

if has('vim_starting')
  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'vim-scripts/L9'
NeoBundle 'vim-scripts/FuzzyFinder'

set rtp+=~/.fzf

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

set backspace=indent,eol,start
set wildmode=list:longest

" window
set splitbelow
set splitright

" status line
set showcmd
set showmode
set laststatus=2
set statusline=%F%m%r%h%w\ [ENC=%{&enc}]\ [FENC=%{&fenc}]\ %{fugitive#statusline()}\ %=\ %3l/%3L,%3v\ %10P\ %4m

" cursor
set whichwrap=b,s,h,l,<,>,[,]

" indent and tab
set smartindent
set nocindent
set expandtab
set tabstop=4 shiftwidth=4 softtabstop=4

" line break
set wrap
set linebreak
set formatoptions=lmoq

" search
set hlsearch    " highlight search
set ignorecase  " ignore the case of normal letters
set smartcase   " not ignore when the first letter is upper case
set incsearch   " show where the pattern while typing a search
set wrapscan    " search wrap around the end of the file

" appearance
set showmatch
set number
set list
set listchars=tab:._,trail:_,extends:>,precedes:<
set display=uhex
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
set cursorline
augroup cch     " show cursor line in only current window
  autocmd! cch
  autocmd WinLeave * set nocursorline
  autocmd WinEnter,BufRead * set cursorline
augroup END

" encoding
set encoding=utf-8
set fileencodings=utf-8,sjis,euc-jp

" color
syntax enable
set background=dark
colorscheme solarized

" fzf
set rtp+=~/.fzf
