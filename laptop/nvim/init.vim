call plug#begin('~/.local/share/nvim/plugged')

" Plug 'neomake/neomake', { 'on': 'Neomake' }
Plug 'zchee/deoplete-jedi'
Plug 'davidhalter/jedi-vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'vim-airline/vim-airline'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'sbdchd/neoformat'
Plug 'davidhalter/jedi-vim'
Plug 'scrooloose/nerdtree'
Plug 'ternjs/tern_for_vim', { 'do': 'npm install && npm install -g tern' }
Plug 'carlitux/deoplete-ternjs'
call plug#end()
augroup myvimrchooks
    au!
    autocmd bufwritepost init.vim source ~/.config/nvim/init.vim
augroup END
" #### TAB to spaces#### :
filetype plugin indent on
" On pressing tab, insert 2 spaces
set expandtab
" show existing tab with 2 spaces width
set tabstop=2
set softtabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
set number
set relativenumber
" #### Deoplete ####
" Enable deoplete completion engine
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_ignore_case = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#enable_camel_case = 1
let g:deoplete#enable_refresh_always = 1
let g:deoplete#max_abbr_width = 0
let g:deoplete#max_menu_width = 0
let g:deoplete#omni#input_patterns = get(g:,'deoplete#omni#input_patterns',{})
let g:tern_request_timeout = 1
let g:tern_request_timeout = 6000
let g:tern#command = ["tern"]
let g:tern#arguments = [" — persistent"]
" ### Neomake ###
" let g:neomake_javascript_enabled_makers = ['eslint']
" Enable alignment
let g:neoformat_basic_format_align = 1

" Enable tab to spaces conversion
let g:neoformat_basic_format_retab = 1

" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1

" disable autocompletion, cause we use deoplete for completion
let g:jedi#completions_enabled = 0

" open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers = "right"
" #### Mappings ####
" NERD TREE
nnoremap <silent> <C-n> :NERDTreeToggle<CR>
" Tabs 
nnoremap <A-l> :tabl<cr>
nnoremap <A-h> :tabr<cr>
nnoremap <A-t> :tabnew<cr>
nnoremap <A-q> :tabclose<cr>
" Deoplete
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
