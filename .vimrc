set rtp+=~/.fzf
source ~/.vim/rc/dein.vim

" clipboard
set clipboard=unnamed

" map
map ; :
nnoremap <silent> ref<CR> :source ~/.vimrc<CR>
nnoremap <silent> qr :QuickRun<CR>

nnoremap <silent> <ESC><ESC> :nohlsearch<CR>
nnoremap <C-w>- <C-w>n
nnoremap <C-w>\| <C-w>v

inoremap <C-a> <Esc>I
inoremap <C-e> <Esc>A
inoremap <C-f> <Right>
inoremap <C-b> <Left>
inoremap <C-h> <BackSpace>
inoremap <C-d> <Del>

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
set tabstop=2 shiftwidth=2 softtabstop=2

autocmd FileType c set tabstop=8 shiftwidth=8 softtabstop=8
autocmd FileType cpp set tabstop=8 shiftwidth=8 softtabstop=8
autocmd FileType yacc set tabstop=8 shiftwidth=8 softtabstop=8
autocmd BufRead,BufNewFile *.mjs setfiletype javascript

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

" Open git managed file in horizontal split
nnoremap <silent> gj :call fzf#run({
\   'source': "git ls-files",
\   'dir': system('git rev-parse --show-toplevel'),
\   'down': '40%',
\   'sink': 'botright split' })<CR>

nnoremap <silent> ff :FufFile<CR>
nnoremap <silent> fb :FufBuffer<CR>
nnoremap <silent> fl :FufLine<CR>
nnoremap <silent> fub :FufBookmarkDir<CR>
nnoremap <silent> fua :FufBookmarkDirAdd<CR>

" Gtags
nnoremap <silent> gt :Gtags
nnoremap <silent> gd :GtagsCursor<CR>

" Completion
nnoremap <silent> <C-n> :cn<CR>
nnoremap <silent> <C-p> :cp<CR>
nnoremap <silent> <C-c> :ccl<CR>

let g:quickrun_config = {
      \   "cpp": {
      \     "command": "clang++",
      \     "cmdopt": "-std=c++11"
      \   },
      \  "idr": {
      \    "command": "idris"
      \  },
      \  "rs": {
      \     "command": "cargo run"
      \  }
      \ }
