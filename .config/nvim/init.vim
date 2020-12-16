syntax on

" ui stuff
set noerrorbells
set nu rnu
set nowrap
" tabs vs spaces
set softtabstop=2
set shiftwidth=4
set expandtab
set smartindent
" file management
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
" search
set incsearch
set hlsearch
set autoread
set ic
" plugin options
set completeopt-=preview
set shellcmdflag=-ic
set list
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'kien/ctrlp.vim'
Plug 'Valloric/YouCompleteMe'
Plug 'mbbill/undotree'
Plug 'rdnetto/YCM-Generator', { 'branch' : 'stable' }
Plug 'ericcurtin/CurtineIncSw.vim' "Header-implementation switcher
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'calviken/vim-gdscript3'

call plug#end()

colorscheme gruvbox

"Open file where it was left off
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

let g:airline_theme='deus'

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.dirty='⚡'
  let g:airline_symbols.crypt = '🔒'
  let g:airline_symbols.linenr = 'ln:'
  let g:airline_symbols.maxlinenr = ' cn'
  let g:airline_symbols.branch = '⎇'
  let g:airline_symbols.paste = 'ρ'
  let g:airline_symbols.spell = 'Ꞩ'
  let g:airline_symbols.notexists = 'Ɇ'
  let g:airline_symbols.whitespace = 'Ξ'

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_use_caching = 0

"Switch background
function! Toggle_transparent()
    if t:is_transparent == 0
        hi Normal guibg=NONE ctermbg=NONE
        let t:is_transparent = 1
    else
        set background=dark
        let t:is_transparent = 0
    endif
endfunction
let t:is_transparent = 1
hi Normal guibg=NONE ctermbg=NONE

let mapleader = " "
nnoremap <Space> <NOP>
nnoremap <TAB> <C-W>w
nnoremap <S-tab> <C-W>W
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>t :NERDTreeToggle<CR>
nnoremap <leader>g :YcmCompleter GoTo<CR>
nnoremap <leader>b :e#<CR>
nnoremap <leader>h :w<CR>:call CurtineIncSw()<CR>
nnoremap <leader>s :w<CR>
nnoremap <leader>p "*p<CR>
nnoremap <leader>P "+p<CR>
nnoremap <leader>y "*
nnoremap <Leader>r :%s/\<<C-r><C-w>\>/
nnoremap <Leader>f :/\<<C-r><C-w><CR>\>
nnoremap <Leader>n :noh<CR>
nnoremap Y y$
nnoremap <Leader>T :call Toggle_transparent()<CR>
nnoremap <Leader>Q :q!<CR>
nnoremap <Leader>q :wq<CR>

