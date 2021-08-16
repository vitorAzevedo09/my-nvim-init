call plug#begin()

Plug 'jiangmiao/auto-pairs'
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
Plug 'preservim/nerdtree'
Plug 'w0rp/ale'
Plug 'terryma/vim-multiple-cursors'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'ncm2/ncm2-tern',  {'do': 'npm install'}
Plug 'ncm2/nvim-typescript', {'do': './install.sh'}
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sbdchd/neoformat'
Plug 'arcticicestudio/nord-vim'
Plug 'w0rp/ale'
Plug 'cohama/lexima.vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'glepnir/zephyr-nvim'
Plug 'nvim-treesitter/nvim-treesitter'

call plug#end()

colorscheme koehler

let mapleader="\<space>"

nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <c-p> :Files<cr>

let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetsDir = '~/.config/nvim/UltiSnips'

let g:python3_host_prog = "path/to/python3"

set hidden
set number
set relativenumber
set mouse=a
set tabstop=2
set shiftwidth=2
set expandtab


let mapleader="\<space>"
inoremap jk <ESC>
inoremap <tab> <c-V><tab>
cnoremap jk <ESC>
inoremap <C-S-space> <up>
inoremap <C-space> <down>
nnoremap <leader>; A;<ESC>
nnoremap <c-p> :Files<cr>
nnoremap <c-s> :w<cr>
nnoremap <c-f> :Ag <cr>
nnoremap <F6> :NERDTreeToggle<CR>
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
" Define mappings
autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
  nnoremap <silent><buffer><expr> <CR>
  \ denite#do_map('do_action')
  nnoremap <silent><buffer><expr> d
  \ denite#do_map('do_action', 'delete')
  nnoremap <silent><buffer><expr> p
  \ denite#do_map('do_action', 'preview')
  nnoremap <silent><buffer><expr> q
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> i
  \ denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr> <Space>
  \ denite#do_map('toggle_select').'j'
endfunction
