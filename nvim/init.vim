" for UTF-8
set ambiwidth=double
set fileencoding=utf-8
set fileencodings=utf-8,euc-jp,japan,shift-jis,iso-2022-jp,cp932,utf-16,ucs-2-internal,ucs-2

"set termencoding=japan
set termencoding=utf-8

" set nobackup autoindent ul=0 showmode report=1 notextauto showmatch suffixes='.log.aux.dvi.o.bak.swp'
set nobackup autoindent ul=0 showmode report=1 showmatch suffixes='.log.aux.dvi.o.bak.swp'
set tabstop=8 noexpandtab smartindent smarttab
set wildmenu
set shiftwidth=4 expandtab smarttab
set nowrapscan
set winheight=5
set history=50
set laststatus=1
set ruler
set incsearch
set modeline
set nobomb
set nu
set title
set cursorline
map  :buffers
" highlight CursorLine ctermbg=240
" highlight Comment ctermfg=50
inoremap  
let mapleader=" "
:set conceallevel=0

"dein Scripts-----------------------------
if &compatible  
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/hanyu_t/.config/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/hanyu_t/.config/dein')  
  call dein#begin('/Users/hanyu_t/.config/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/lorentzca/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')

  " You can specify revision/branch/tag.
  call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

  " easy motion plugin
  call dein#add('Lokaltog/vim-easymotion')
  let g:EasyMotion_do_mapping = 0 "Disable default mappings
  nmap s <Plug>(easymotion-s2)

  " unite vim plugin
  call dein#add('Shougo/unite.vim')
  let g:unite_enable_start_insert=1
  let g:unite_source_history_yank_enable =1
  let g:unite_source_file_mru_limit = 200
  nnoremap <silent> ,uy :<C-u>Unite history/yank<CR>
  nnoremap <silent> ,ub :<C-u>Unite buffer<CR>
  nnoremap <silent> ,uf :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
  nnoremap <silent> ,ur :<C-u>Unite -buffer-name=register register<CR>
  nnoremap <silent> ,uu :<C-u>Unite file_mru buffer<CR>

  " comment out plugin setting. This function move with <C-k>
  call dein#add("tyru/caw.vim.git")
  nmap <C-K> <Plug>(caw:i:toggle)
  vmap <C-K> <Plug>(caw:i:toggle)

  " vim-fugitive
  " This plugin make to use git commands in vim editor
  call dein#add('tpope/vim-fugitive')

  " this plugin shows syntax error
  call dein#add('scrooloose/syntastic.git')
  let g:syntastic_python_checkers = ["flake8"]
  set statusline+=%#warningmsg#
  set statusline+=%{SyntasticStatuslineFlag()}
  set statusline+=%*
 
  let g:syntastic_always_populate_loc_list = 1
  let g:syntastic_auto_loc_list = 1
  let g:syntastic_check_on_open = 1
  let g:syntastic_check_on_wq = 0
  highlight SyntasticError guibg=#2f0000
 
  " this plugin can run program in editor
  " short cut \ r
  call dein#add('thinca/vim-quickrun')
  let g:quickrun_config = {'_': {'hook/time/enable': '1'},}
  set splitright

  " Required:
  call dein#end()
  call dein#save_state()
endif

" this option will update dein vim plugin install automatically
if has('vim_starting') && dein#check_install()
  call dein#install()
endif

" Required:
filetype plugin indent on  
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------

" Required:
filetype plugin indent on

source ~/.config/nvim/format.vim
let format_join_spaces = 2
let format_allow_over_tw = 1
map Q gq
"set formatoptions+=mM

let myscriptsfile = "~/.config/nvim/myscripts.vim"

syntax on
set hlsearch
map  :noh:redr!
"hi Comment ctermfg=cyan

"hi Comment term=bold ctermfg=darkgreen
"hi Type term=none ctermfg=Cyan
"hi String term=bold ctermfg=darkyellow
"hi Number term=bold ctermfg=darkyellow
hi Statement term=bold cterm=bold ctermfg=8
hi Identifier term=bold cterm=bold ctermfg=Blue

filetype on
filetype indent on
filetype plugin on
let loaded_ruby_ftplugin = 1

let loaded_matchparen = 1

"for ruby
autocmd BufNewFile *.rb 0r ~/.config/nvim/templates/rb.tpl

"for python
autocmd BufNewFile *.py 0r ~/.config/nvim/templates/py.tpl

"for shellscript
autocmd BufNewFile *.sh 0r ~/.config/nvim/templates/sh.tpl

"for node.js
autocmd BufNewFile *.js 0r ~/.config/nvim/templates/js.tpl

set noundofile

"insertモードから抜ける
inoremap <silent> lll <ESC>
inoremap <silent> hh <ESC>
inoremap <silent> jj <ESC>
inoremap <silent> kk <ESC>

" 行頭・行末移動方向をキーの相対位置にあわせる
nnoremap 0 $ 
nnoremap 1 0 

" 挿入モードでのカーソル移動
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

" カーソル前の文字削除
" inoremap <silent> <C-h> <C-g>u<C-h>
" カーソル後の文字削除
inoremap <silent> <C-d> <Del>
" カーソルから行頭まで削除
inoremap <silent> <C-d>e <Esc>lc
" カーソルから行末まで削除
inoremap <silent> <C-d>0 <Esc>lc
" カーソルから行頭までヤンク
inoremap <silent> <C-y>e <Esc>ly<Insert>
" カーソルから行末までヤンク
inoremap <silent> <C-y>0 <Esc>ly<Insert>

"   " 引用符, 括弧の設定
let g:netrw_liststyle = 3
let g:hybrid_use_iTerm_colors = 1
colorscheme hybrid
syntax on
" "set list lcs=tab:\|\
set background=dark
set clipboard+=unnamed
set backspace=indent,eol,start
"行頭へ
inoremap <silent> h<C-h> <C-r>=MyJumptoBol('　。、．，／！？「」')<CR>
"行末へ
inoremap <silent> l<C-l> <C-r>=MyJumptoEol('　。、．，／！？「」')<CR>

" NONUSE SETTING : This is mouse setting
"
" if has("mouse")
"   set mouse=a
" endif

""""""""""""""""""""""""""""""
"sepが空でなければ、sepをセパレータとしてジャンプ。
"見つからなければ見かけの行頭へ。
"カーソル位置が見かけの行頭の場合は真の行頭へ。
""""""""""""""""""""""""""""""
function! MyJumptoBol(sep)
  if col('.') == 1
    call cursor(line('.')-1, col('$'))
    call cursor(line('.'), col('$'))
    return ''
  endif
  if matchend(strpart(getline('.'), 0, col('.')), '[[:blank:]]\+') >= col('.')-1
    silent exec 'normal! 0'
    return ''
  endif
  if a:sep != ''
    call search('[^'.a:sep.']\+', 'bW', line("."))
    if col('.') == 1
      silent exec 'normal! ^'
    endif
    return ''
  endif
  exec 'normal! ^'
  return ''
endfunction

""""""""""""""""""""""""""""""
"sepが空でなければ、sepをセパレータとしてジャンプ。
"見つからなければ行末へ。
""""""""""""""""""""""""""""""
function! MyJumptoEol(sep)
  if col('.') == col('$')
    silent exec 'normal! w'
    return ''
  endif

  if a:sep != ''
    let prevcol = col('.')
    call search('['.a:sep.']\+[^'.a:sep.']', 'eW', line("."))
    if col('.') != prevcol
      return ''
    endif
  endif
  call cursor(line('.'), col('$'))
  return ''
endfunction
