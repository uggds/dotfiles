set nocompatible " viとの互換をOFF
set noswapfile " swpファイルを作成しない
set nobackup "バックアップファイルを作らない設定にする
set autoread "他で書き換えられたら読み込み直す
set formatoptions=lmoq " テキスト整形オプション，マルチバイト系を追加
set hidden
set vb t_vb= " ビープをならさない
set whichwrap=b,s,h,l,<,>,[,]    " カーソルを行頭、行末で止まらないようにする
syntax on "シンタックスハイライトを有効にする
set autoindent "オートインデントする
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set laststatus=2
set number "行番号を表示する
set incsearch "インクリメンタルサーチ
set ignorecase "検索時に大文字小文字を無視する
set showmatch "対応する括弧のハイラ/イト表示する
set backspace=indent,eol,start
set ruler "ルーラーの表示する
set virtualedit=all " 矩形選択で自由に移動する
set textwidth=0 "自動改行しない
set nowrap " 長い行を折り返さないで表示
set list
set noundofile
" j, k による移動を折り返されたテキストでも自然に振る舞うように変更
nnoremap j gj
nnoremap k gk

set ignorecase "検索時に大文字小文字を無視
" 検索後にジャンプした際に検索単語を画面中央に持ってく
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz
"set cursorline " カーソル行をハイライト
autocmd ColorScheme * highlight CursorLineNr ctermfg=250
autocmd ColorScheme * highlight Comment ctermbg=0
autocmd ColorScheme * highlight LineNr ctermbg=0
autocmd ColorScheme * highlight Normal ctermbg=none

" Leader キーを設定
let mapleader = ","
" 横分割時は下へ､ 縦分割時は右へ新しいウィンドウが開くようにする
set splitbelow
set splitright
" OSのクリップボードを使用する
set clipboard+=unnamed
"ヤンクした文字は、システムのクリップボードに入れる
set clipboard+=autoselect
" 挿入モードでCtrl+kを押すとクリップボードの内容を貼り付けられるようにする
"imap <C-p>  <ESC>"*pa
" ターミナルでマウスを使用できるようにする
set mouse=a
set guioptions+=a
set ttymouse=xterm2
" ファイルタイプ判定をon
filetype plugin on

"-------------------------------------------------------------------------------
" エンコーディング関連 Encoding
"-------------------------------------------------------------------------------
set ffs=unix,dos,mac  " 改行文字
set encoding=utf-8    " デフォルトエンコーディング

set encoding=utf-8 "デフォルトの文字コード
set fileencoding=utf-8 "デフォルトの文字コード

set guifont=Migu_1P:h10
"set guifont=MS_Gothic:h20

" 文字コード認識はbanyan/recognize_charcode.vimへ
autocmd FileType cvs :set fileencoding=utf-8
autocmd FileType svn :set fileencoding=utf-8
autocmd FileType js :set fileencoding=utf-8
autocmd FileType css :set fileencoding=utf-8
autocmd FileType html :set fileencoding=utf-8
autocmd FileType xml :set fileencoding=utf-8
autocmd FileType json :set fileencoding=utf-8
autocmd FileType java :set fileencoding=utf-8
autocmd FileType scala :set fileencoding=utf-8
autocmd FileType clojure :set fileencoding=utf-8
autocmd FileType ruby :set fileencoding=utf-8
autocmd FileType * setlocal formatoptions-=ro

" ワイルドカードで表示するときに優先度を低くする拡張子
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc

" 指定文字コードで強制的にファイルを開く
command! Cp932 edit ++enc=cp932
command! Eucjp edit ++enc=euc-jp
command! Iso2022jp edit ++enc=iso-2022-jp
command! Utf8 edit ++enc=utf-8
command! Jis Iso2022jp
command! Sjis Cp932

" カレントウィンドウにのみ罫線を引く
augroup cch
  autocmd! cch
  autocmd WinLeave * set nocursorline
  autocmd WinEnter,BufRead * set cursorline
augroup END

"行末の空白文字を可視化
highlight WhitespaceEOL cterm=underline ctermbg=red guibg=#FF0000
au BufWinEnter * let w:m1 = matchadd("WhitespaceEOL", ' +$')
au WinEnter * let w:m1 = matchadd("WhitespaceEOL", ' +$')

"行頭のTAB文字を可視化
highlight TabString ctermbg=red guibg=red
au BufWinEnter * let w:m2 = matchadd("TabString", '^\t+')
au WinEnter * let w:m2 = matchadd("TabString", '^\t+')

" 全角スペースの表示
highlight ZenkakuSpace cterm=underline ctermbg=red guibg=#666666
au BufWinEnter * let w:m3 = matchadd("ZenkakuSpace", '　')
au WinEnter * let w:m3 = matchadd("ZenkakuSpace", '　')
"特殊文字(SpecialKey)の見える化。listcharsはlcsでも設定可能。
""trailは行末スペース。
set list
set listchars=tab:>-,trail:-,nbsp:%,extends:>,precedes:<

" ヤンクした値を連続でペーストする設定
vnoremap <silent> <C-p> "0p<CR>
"ビジュアルモード時vで行末まで選択
vnoremap v $h

" Escの2回押しでハイライト消去
nmap <ESC><ESC> :nohlsearch<CR><ESC>

inoremap jj <ESC>

" insert mode での移動
inoremap <C-e> <END>
inoremap <C-a> <HOME>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>
inoremap <C-b> <BS>
inoremap <C-d> <DEL>

"%の移動をtabでも可能に。
" tab means %
nnoremap <tab> %

"splitの移動を簡単に。ctrl押しながらhjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" タブ関連のキーマッピング
set showtabline=2 " 常にタブラインを表示

" The prefix key.
nnoremap    [Tag]   <Nop>
nmap    t [Tag]
" Tab jump
for n in range(1, 9)
    execute 'nnoremap <silent> [Tag]'.n  ':<C-u>tabnext'.n.'<CR>'
  endfor
  " t1 で1番左のタブ、t2 で1番左から2番目のタブにジャンプ

  map <silent> [Tag]c :tablast <bar> tabnew<CR>
  " tc 新しいタブを一番右に作る
  map <silent> [Tag]x :tabclose<CR>
  " tx タブを閉じる
  map <silent> [Tag]n :tabnext<CR>
  " tn 次のタブ
  map <silent> [Tag]p :tabprevious<CR>
  " tp 前のタブ

filetype off
syntax on
"set background=dark
colorscheme hybrid
highlight Normal ctermbg=none
"=======================NEO BUNDLE===========================
" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
"================================================================
" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'Shougo/vimshell'
NeoBundle 'thinca/vim-quickrun'

" quickrunの設定
nmap <Leader>r <Plug>(quickrun)
" 横分割をするようにする
let g:quickrun_config={'*': {'split': 'below'}}

NeoBundle 'Shougo/neocomplcache'
" neocomplcacheの設定
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_max_list = 30
let g:neocomplcache_auto_completion_start_length = 2
let g:neocomplcache_enable_smart_case = 1
" like AutoComplPop
let g:neocomplcache_enable_auto_select = 1
" search with camel case like Eclipse
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1
imap <C-k> <Plug>(neocomplcache_snippets_expand)
smap <C-k> <Plug>(neocomplcache_snippets_expand)
inoremap <expr><C-g> neocomplcache#undo_completion()
inoremap <expr><C-l> neocomplcache#complete_common_string()

" neosnippetの設定
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable() <Bar><bar> neosnippet#jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable() <Bar><bar> neosnippet#jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

NeoBundle 'scrooloose/syntastic'
" reference環境
NeoBundle 'thinca/vim-ref'
NeoBundle 'rking/ag.vim'
" 文字コード
NeoBundle 'banyan/recognize_charcode.vim'
" multipule
NeoBundle 'terryma/vim-multiple-cursors' 
" カラースキーマ
NeoBundle 'ujihisa/unite-colorscheme'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'vim-scripts/twilight'
NeoBundle 'jonathanfilip/vim-lucius'
NeoBundle 'jpo/vim-railscasts-theme'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'vim-scripts/Wombat'
NeoBundle 'tomasr/molokai'
NeoBundle 'vim-scripts/rdark'
NeoBundle 'baskerville/bubblegum'
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'sjl/badwolf'
NeoBundle 'bling/vim-airline'     " Statusを格好良く表示
" indentの深さに色を付ける
NeoBundle 'nathanaelkane/vim-indent-guides'

let g:indent_guides_start_level=1
let g:indent_guides_auto_colors=0
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_color_change_percent=20
let g:indent_guides_guide_size=1
let g:indent_guides_space_guides=1
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=237
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=237
au FileType coffee,ruby,javascript,python IndentGuidesEnable
nmap <silent><Leader>ig <Plug>IndentGuidesToggle

"日本語の移動に便利なの
NeoBundle "deton/jasegment.vim"
" unite
NeoBundle "Shougo/unite.vim"
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'ujihisa/unite-colorscheme'
NeoBundle 'h1mesuke/unite-outline'
" 入力モードで開始する
let g:unite_enable_start_insert = 1

nnoremap    [unite]   <Nop>
nmap    f [unite]

" 分割しないでuniteのbufferを表示する
nnoremap [unite]u  :<C-u>Unite -no-split<Space>

" 全部乗せ
nnoremap <silent> [unite]a  :<C-u>UniteWithCurrentDir -no-split -buffer-name=files buffer file_mru bookmark file<CR>
" ファイル一覧
nnoremap <silent> [unite]f  :<C-u>Unite -no-split -buffer-name=files file<CR>
" バッファ一覧
nnoremap <silent> [unite]j  :<C-u>Unite -no-split buffer<CR>
" 常用セット
nnoremap <silent> [unite]u  :<C-u>Unite -no-split buffer file_mru<CR>
" 最近使用したファイル一覧
nnoremap <silent> [unite]m  :<C-u>Unite -no-split file_mru<CR>
" 現在のバッファのカレントディレクトリからファイル一覧
nnoremap <silent> [unite]d  :<C-u>UniteWithBufferDir -no-split file<CR>
" tab
nnoremap <silent> [unite]t  :<C-u>Unite tab<CR>

" unite-rails
nnoremap <silent> ,urc :<C-u>Unite file_rec/async:app/controllers/ <CR>
nnoremap <silent> ,urfc :<C-u>Unite file file/new -input=app/controllers/ <CR>
nnoremap <silent> ,urm :<C-u>Unite file_rec/async:app/models/ <CR>
nnoremap <silent> ,urfm :<C-u>Unite file file/new -input=app/models/ <CR>
nnoremap <silent> ,urv :<C-u>Unite file_rec/async:app/views/ <CR>
nnoremap <silent> ,urfv :<C-u>Unite file file/new -input=app/views/ <CR>
nnoremap <silent> ,urs :<C-u>Unite file_rec/async:app/assets/stylesheets/ <CR>
nnoremap <silent> ,urfs :<C-u>Unite file file/new -input=app/assets/stylesheets/ <CR>
nnoremap <silent> ,urj :<C-u>Unite file_rec/async:app/assets/javascripts/ <CR>
nnoremap <silent> ,urfj :<C-u>Unite file file/new -input=app/assets/javascripts/ <CR>
nnoremap <silent> ,uro :<C-u>Unite file_rec/async:config/ <CR>
nnoremap <silent> ,urfo :<C-u>Unite file file/new -input=config/ <CR>
nnoremap <silent> ,url :<C-u>Unite file_rec/async:lib/ <CR>
nnoremap <silent> ,urfl :<C-u>Unite file file/new -input=lib/ <CR>
nnoremap <silent> ,urr :<C-u>Unite file_rec/async:spec/ <CR>
nnoremap <silent> ,urfr :<C-u>Unite file file/new -input=spec/ <CR>

" ウィンドウを分割して開く
au FileType unite nnoremap <silent> <buffer> <expr> <C-j> unite#do_action('split')
au FileType unite inoremap <silent> <buffer> <expr> <C-j> unite#do_action('split')
" ウィンドウを縦に分割して開く
au FileType unite nnoremap <silent> <buffer> <expr> <C-l> unite#do_action('vsplit')
au FileType unite inoremap <silent> <buffer> <expr> <C-l> unite#do_action('vsplit')

" ESCキーで終了する
au FileType unite nmap <silent> <buffer> <ESC> <Plug>(unite_exit)
" unite.vim上でのキーマッピング
autocmd FileType unite call s:unite_my_settings()
function! s:unite_my_settings()
  " 単語単位からパス単位で削除するように変更
  imap <buffer> <C-w> <Plug>(unite_delete_backward_path)
endfunction

"------------------------------------
"  javascriptライブラリsyntax
"------------------------------------
NeoBundle 'othree/javascript-libraries-syntax.vim'
autocmd BufReadPre *.js let b:javascript_lib_use_angularjs = 1

NeoBundle 'burnettk/vim-angular'
 let g:angular_source_directory = 'app'
 let g:angular_test_directory = 'jasmine/spec'
 let g:angular_filename_convention = 'camelcased'
NeoBundle 'matthewsimo/angular-vim-snippets'
NeoBundle 'claco/jasmine.vim'
"------------------------------------
"" smooth_scroll.vim
"------------------------------------
NeoBundle 'yuroyoro/smooth_scroll.vim'
map  :call SmoothScroll("d",1, 1)<CR>
map :call SmoothScroll("u",1, 1)<CR>

" ファイルツリー表示
NeoBundle "scrooloose/nerdtree"

"------------------------------------
" NERD_commenter.vim
"------------------------------------
" コメントトグル<Leader>c<space>でコメントをトグル)
NeoBundle 'scrooloose/nerdcommenter.git'
" コメントの間にスペースを空ける
let NERDSpaceDelims = 1
"<Leader>xでコメントをトグル(NERD_commenter.vim)
map <Leader>x, c<space>
"未対応ファイルタイプのエラーメッセージを表示しない
let NERDShutUp=1

"------------------------------------
" Align
"------------------------------------
" Align : 高機能整形・桁揃えプラグイン
NeoBundle 'Align'
" Alignを日本語環境で使用するための設定
let g:Align_xstrlen = 3

" マルチバイト対応の整形
NeoBundle 'h1mesuke/vim-alignta'

"------------------------------------
" surround.vim
"------------------------------------
" surround.vim : テキストを括弧で囲む／削除する
NeoBundle 'tpope/vim-surround'
" s, ssで選択範囲を指定文字でくくる
"nmap s <Plug>Ysurround
"nmap ss <Plug>Yssurround
let g:surround_{char2nr('e')} = "begin \r end"
let g:surround_{char2nr('d')} = "do \r end"
let g:surround_{char2nr("-")} = ":\r"

"------------------------------------
" wildfire.vim
"------------------------------------
NeoBundle 'gcmt/wildfire.vim'
" wildfire
" This selects the next closest text object.
let g:wildfire_fuel_map = "<ENTER>"
let g:wildfire_water_map = "<BS>"

" This selects the previous closest text object.
let g:wildfire_objects = ["i'", 'i"', 'i)', 'i]', 'i}', 'ip', 'it', 'i>']

" smartchr.vim : ==などの前後を整形
NeoBundle 'smartchr'
NeoBundle 'LeafCage/yankround.vim'

" yankround.vim {{{
nmap p <Plug>(yankround-p)
nmap P <Plug>(yankround-P)
nmap <C-p> <Plug>(yankround-prev)
nmap <C-n> <Plug>(yankround-next)
" 履歴取得数
let g:yankround_max_history = 50
"履歴一覧(kien/ctrlp.vim)
nnoremap <silent>g<C-p> :<C-u>CtrlPYankRound<CR>
"}}}

NeoBundle 'kien/ctrlp.vim'

" 自動保存
NeoBundle 'syui/wauto.vim'
nmap <Leader>s  <Plug>(AutoWriteStart)
nmap <Leader>ss <Plug>(AutoWriteStop)
let g:auto_write = 1

"Calendar
NeoBundle 'itchyny/calendar.vim'
let g:calendar_google_calendar = 1
let g:calendar_google_task = 1

"--------------------------------------
" JavaScript
"--------------------------------------
NeoBundle 'JavaScript-syntax'
NeoBundle 'jiangmiao/simple-javascript-indenter'
" js BDDツール
NeoBundle 'claco/jasmine.vim'
" この設定入れるとshiftwidthを1にしてインデントしてくれる
let g:SimpleJsIndenter_BriefMode = 1
" この設定入れるとswitchのインデントがいくらかマシに
let g:SimpleJsIndenter_CaseIndentLevel = -1

" jshintを使ってチェック
let g:syntastic_javascript_checker = "jshint"

call neobundle#end()
"================================================================
