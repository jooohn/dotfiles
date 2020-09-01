if &compatible
  set nocompatible
endif
set runtimepath^=~/src/github.com/Shougo/dein.vim

call dein#begin('~/.dein')

call dein#add('Shougo/neocomplete.vim')

" Awesome git wrapper
" https://github.com/tpope/vim-fugitive
call dein#add('tpope/vim-fugitive')

" Run commands quickly
" https://github.com/thinca/vim-quickrun
call dein#add('thinca/vim-quickrun')

" Color schema
" https://github.com/altercation/vim-colors-solarized
call dein#add('altercation/vim-colors-solarized')

" insert or delete brackets, parens, quotes in pair
" https://github.com/jiangmiao/auto-pairs
call dein#add('jiangmiao/auto-pairs')

" utility library
call dein#add('vim-scripts/L9')

" gtags
call dein#add('vim-scripts/gtags.vim')

" filer
call dein#add('vim-scripts/FuzzyFinder')

" Rust
call dein#add('rust-lang/rust.vim')

call dein#add('derekwyatt/vim-scala')

call dein#add('hashivim/vim-terraform')

call dein#add('leafgarland/typescript-vim')

call dein#end()

if dein#check_install()
  call dein#install()
endif

filetype plugin indent on
