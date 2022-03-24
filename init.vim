call plug#begin()
Plug 'fatih/vim-go'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sainnhe/everforest'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'isobit/vim-caddyfile'



call plug#end()
" Beginn Colorscheme
if has('termguicolors')
  set termguicolors
endif
set background=dark
let g:everforest_background = 'hard'
let g:everforest_better_performance = 1
colorscheme everforest
" End Colorscheme
" Beginn Airline
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline_theme = 'molokai'
" End Airline	

" Spell-check Markdown files and Git Commit Messages
set nospell
autocmd FileType markdown setlocal spell spelllang=en_us,de_de
autocmd FileType gitcommit setlocal spell spelllang=en_us,de_de

"setlocal spell spelllang=en_us,de_de
autocmd FileType markdown setlocal complete+=kspell spelllang=en_us,de_de
autocmd FileType gitcommit setlocal complete+=kspell spelllang=en_us,de_de

set relativenumber
set textwidth=80
set colorcolumn=80

set tabstop=4
set shiftwidth=4
set softtabstop=0 expandtab	

" Coc Keymappings (Tab = Shift Tab for Scrolling through corretions, Enter to
" complete)
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
