let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
    silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.config/nvim')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
Plug 'APZelos/blamer.nvim'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-eunuch'
Plug 'preservim/nerdtree'
Plug 'romgrk/barbar.nvim'
Plug 'Chiel92/vim-autoformat'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-surround'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdcommenter'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'stsewd/fzf-checkout.vim'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'morhetz/gruvbox'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'akinsho/bufferline.nvim'
Plug 'ryanoasis/vim-devicons'
Plug 'lyuts/vim-rtags'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'frazrepo/vim-rainbow'
Plug 'vim-syntastic/syntastic'
Plug 'mbbill/undotree'
Plug 'ctrlpvim/ctrlp.vim'
"Plug 'maxmellon/vim-jsx-pretty'
"Plug 'mlaursen/vim-react-snippets'
"Plug 'alvan/vim-closetag'
"Plug 'peitalin/vim-jsx-typescript'
"Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
"Plug 'jparise/vim-graphql'
"Plug 'vim-utils/vim-man'
"Plug 'AndrewRadev/tagalong.vim'
"Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
"Plug 'jackguo380/vim-lsp-cxx-highlight'
"Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  
"Plug 'git@github.com:kien/ctrlp.vim.git'
"Plug 'git@github.com:Valloric/YouCompleteMe.git'
"Plug 'antoinemadec/coc-fzf'
"Plug 'jupyter-vim/jupyter-vim'
"Plug 'neovim/nvim-lspconfig'
"Plug 'autozimu/LanguageClient-neovim', {
"Plug 'rhysd/vim-clang-format'
            "\ 'branch': 'next',
            "\ 'do': 'bash install.sh',
            "\ }
" (Optional) Multi-entry selection UI.
"Plug 'neovim/nvim-lsp'
"Plug 'prabirshrestha/vim-lsp'
"Plug 'Shougo/deoplete.nvim'
"Plug 'lighttiger2505/deoplete-vim-lsp'
"Plug 'christoomey/vim-tmux-navigator'
"Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
"Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
"Plug 'sheerun/vim-polyglot'
"Plug 'HerringtonDarkholme/yats.vim'
"Plug 'jremmen/vim-ripgrep'
"Plug 'ianks/vim-tsx'
"Plug 'leafOfTree/vim-matchtag'

call plug#end()

let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox
set background=dark

syntax on

set hidden
set noerrorbells
set number
set relativenumber
set tabstop=4 softtabstop=4
set shiftwidth=4
set smarttab
set smartindent
set nowrap
set autoindent
set smartcase
set noswapfile
set incsearch
set nobackup
set cindent
set expandtab
set ignorecase
set hidden
set nohlsearch
set hlsearch!
set nobackup
set scrolloff=8
set noswapfile
set updatetime=300
set shortmess=c
set signcolumn=yes
set nohlsearch
set signcolumn=no
set showmode
hi CursorLineNr guifg=#af00af
set cursorline
set cursorlineopt=number
set showmatch
let g:lightline = {
            \ 'active': {
            \   'left': [ [ 'mode', 'paste' ],
            \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
            \ },
            \ 'component_function': {
            \   'filename': 'LightlineFilename',
            \   'gitbranch': 'FugitiveHead',
            \ },
            \ 'colorscheme': 'onedark'
            \ }

let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1

let g:blamer_enabled = 1
let g:blamer_prefix = ' > '
let g:blamer_delay = 500

let g:airline_powerline_fonts = 1
let g:syntastic_cpp_checkers = ['cpplint']
let g:syntastic_c_checkers = ['cpplint']
let g:syntastic_cpp_cpplint_exec = 'cpplint'
" The following two lines are optional. Configure it to your liking!
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0
let g:python_highlight_all = 1
let $FZF_DEFAULT_OPTS = '--reverse'
let g:ctrlp_use_caching = 0
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:prettier#config#config_precedence = 'file-override'
let g:prettier#config#tab_width = 4
let g:prettier#config#use_tabs = 'true'

let g:NERDDefaultAlign = 'left'
let g:closetag_emptyTags_caseSensitive = 0
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.jsx,*.tsx,*.js,*.ts'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.tsx'
let g:closetag_filetypes = 'html,xhtml,phtml,jsx,tsx,js,ts'
let g:closetag_shortcut = '>'
let g:closetag_regions = {
            \ 'typescript.tsx': 'jsxRegion,tsxRegion',
            \ 'javascript.jsx': 'jsxRegion',
            \ 'typescriptreact': 'jsxRegion,tsxRegion',
            \ 'javascriptreact': 'jsxRegion',
            \ }
let g:rainbow_active = 1

"let mapleader = " "
"map <SPACE> <leader>


nnoremap <F3> :set hlsearch!<CR>
let g:python_highlight_all = 1
inoremap jk <ESC>
imap kk <ESC>O
imap <Enter> o<ESC>
imap <S-Enter> O<ESC>
nnoremap <silent> <C-f> :Files<CR>
nnoremap Y y$

"copy pasting to system clipboard
vmap <leader>y "*y
vmap <leader>y "+y
vmap <leader>p "*p
vmap <leader>p "+p
nmap vv :vsplit<CR>,l
nmap <C-n> :NERDTreeToggle<CR>
"nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <leader>n :NERDTreeFocus<CR>
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle
vmap -- <plug>NERDCommenterSexy
nmap -- <plug>NERDCommenterSexy
imap <C-/> <plug>NERDCommenterToggle
nnoremap <leader>gc :GBranches<CR>

nnoremap <leader>h :wincm h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>


"source file
nmap <C-a> :source ~/.config/nvim/init.vim<CR>

" BarBar mapping
nmap <C-j> :BufferPrevious<CR>
nmap <C-k> :BufferNext<CR>
nmap g1 :BufferGoto 1<CR>
nmap g2 :BufferGoto 2<CR>
nmap g3 :BufferGoto 3<CR>
nmap g4 :BufferGoto 4<CR>
nmap g5 :BufferGoto 5<CR>
nmap g6 :BufferGoto 6<CR>
nmap g7 :BufferGoto 7<CR>
nmap g8 :BufferGoto 8<CR>
nmap g9 :BufferLast<CR>
nmap <C-x> :BufferClose<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Coc config
""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:coc_global_extensions = [
            \ 'coc-css',
            \ 'coc-snippets',
            \ 'coc-pairs',
            \ 'coc-eslint', 
            \ 'coc-prettier', 
            \ 'coc-tsserver', 
            \ 'coc-json', 
            \ 'coc-go', 
            \ 'coc-clangd',
            \ 'coc-python',
            \ 'coc-clang-format-style-options',
            \ 'coc-html-css-support'
            \ ]

let g:prettier#config#use_tabs=4

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'
" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

nmap <leader>rn <Plug>(coc-rename)
nnoremap <Leader>f :<C-u>ClangFormat<CR>
" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)
" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)
" Remap for goto definition
map <silent> gy <Plug>(coc-type-definition)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Remap for rename current word
nmap <leader>rr <Plug>(coc-rename)
"Formatting selected code
xmap <leader>f <Plug>(coc-format-selected)
nmap <leader>f <Plug>(coc-format-selected)
" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    elseif (coc#rpc#ready())
        call CocActionAsync('doHover')
    else
        execute '!' . &keywordprg . " " . expand('<cword>')
    endif
endfunction



"format current buffer
command! -nargs=0 Prettier :CocCommand prettier.formatFile
command! -nargs=0 Format :call CocAction('format')
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
nmap <C-s> :Prettier<CR>
inoremap <silent><expr> <TAB>
            \ pumvisible() ? "\<C-n>" :
            \ <SID>check_back_space() ? "\<TAB>" :
            \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

"Use <c-space> to trigger completion.
if has('nvim')
    inoremap <silent><expr> <c-space> coc#refresh()
else
    inoremap <silent><expr> <c-@> coc#refresh()
endif


"inoremap <silent><expr> <TAB>
            "\ pumvisible() ? coc#_select_confirm() :
            "\ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
            "\ <SID>check_back_space() ? "\<TAB>" :
            "\ coc#refresh()

"function! s:check_back_space() abort
"let col = col('.') - 1
"return !col || getline('.')[col - 1]  =~# '\s'
"endfunction

"let g:coc_snippet_next = '<tab>'

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""
"Jupyter config
"""""""""""""""""""""""""""""""""""""""""""""

"Run current file
"nnoremap <buffer> <silent> <localleader>R :JupyterRunFile<CR>
"nnoremap <buffer> <silent> <localleader>I :PythonImportThisFile<CR>

"Change to directory of current file
"nnoremap <buffer> <silent> <localleader>d :JupyterCd %:p:h<CR>

"Send a selection of lines
"nnoremap <buffer> <silent> <localleader>X :JupyterSendCell<CR>
"nnoremap <buffer> <silent> <localleader>E :JupyterSendRange<CR>
"nmap     <buffer> <silent> <localleader>e <Plug>JupyterRunTextObj
"vmap     <buffer> <silent> <localleader>e <Plug>JupyterRunVisual

"nnoremap <buffer> <silent> <localleader>U :JupyterUpdateShell<CR>

"Debugging maps
"nnoremap <buffer> <silent> <localleader>b :PythonSetBreak<CR>d
