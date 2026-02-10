call plug#begin()
Plug 'easymotion/vim-easymotion'

Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'

Plug 'piec/vim-lsp-clangd'

Plug 'vim-denops/denops.vim'
Plug 'kat0h/bufpreview.vim', { 'do': 'deno task prepare' }

call plug#end()

