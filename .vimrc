call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'dense-analysis/ale'
Plug 'morhetz/gruvbox'
Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'davidhalter/jedi-vim'
"Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'heavenshell/vim-pydocstring'
Plug 'junegunn/fzf.vim'
Plug 'vimwiki/vimwiki'
Plug 'tomlion/vim-solidity'

call plug#end()

let g:vimwiki_list = [{'syntax': 'markdown', 'ext': '.md'}]

set backupdir=/tmp//
set directory=/tmp//
set undodir=/tmp//

set termguicolors

set wildmenu
set wildmode=longest:full,full

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

autocmd vimenter * colorscheme gruvbox
set bg=dark

autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType typescript setlocal shiftwidth=2 tabstop=2

set number
set relativenumber

nnoremap <SPACE> <Nop>
let mapleader = " "

nnoremap <leader>g :ALEGoToDefinition<CR>
nnoremap <leader>n :cn<CR>
nnoremap <leader>p :cp<CR>
nnoremap <leader>a :FZF<CR>

nmap <silent> <C-l> <Plug>(pydocstring)
let g:pydocstring_formatter = 'google'
let g:pydocstring_doq_path = '/home/robin/env/bin/doq'

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['prettier'],
\   'typescriptreact': ['prettier'],
\   'typescript': ['prettier'],
\   'python': ['black', 'isort'],
\   'solidity': ['prettier'],
\}

let g:ale_linters = {
\   'rust': ['cargo', 'rls'],
\   'python': ['mypy', 'pylint', 'flake8'],
\}

let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-q>"
let g:snips_author="Robin Raymond"
let g:snips_email="robin@robinraymond.de"
let g:snips_github="r-raymond"
