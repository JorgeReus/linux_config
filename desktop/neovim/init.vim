call plug#begin()
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdTree'
Plug 'bling/vim-airline'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
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
let mapleader="ñ"
noremap <silent> <C-n> :NERDTreeToggle<CR>
" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

" Tabs 
nnoremap <A-l> :tabl<cr>
nnoremap <A-h> :tabr<cr>
nnoremap <A-t> :tabnew<cr>
nnoremap <A-q> :tabclose<cr>

