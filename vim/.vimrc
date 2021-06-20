call plug#begin()
Plug 'preservim/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'othree/html5.vim'
Plug 'rust-lang/rust.vim'
Plug 'wakatime/vim-wakatime'
Plug 'mattn/emmet-vim'
Plug 'codota/tabnine-vim'
Plug 'itchyny/lightline.vim'
Plug 'morhetz/gruvbox'
Plug 'jiangmiao/auto-pairs'
Plug 'leafoftree/vim-vue-plugin'
call plug#end()
autocmd VimEnter * NERDTree 
nnoremap <C-t> :NERDTreeToggle<CR>
syntax on
set number
