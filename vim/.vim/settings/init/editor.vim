" バックアップの作成を無効化
set nobackup
set nowritebackup

" スワップファイルを作成しない
set noswapfile

" 行番号表示
set number
set relativenumber

" エラー時にビープを鳴らさない
set noerrorbells


" ----------------
" インデント
" ----------------

" Tabで半角スペース挿入
set expandtab

" インデント幅
set tabstop=4
set shiftwidth=0
set softtabstop=0

"スマートインデント
set smartindent

" ----------------
" 検索
" ----------------

" ハイライト
set hlsearch
nnoremap <ESC><ESC> :nohlsearch<CR><ESC>
