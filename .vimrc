" Troy Holsapple

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" Required - let Vundlemanage Vundle
Plugin 'Vundle.vim'

" nerdtree - file system explorer
Plugin 'scrooloose/nerdtree'
" vim-gitgutter - git diff tracker
Plugin 'airblade/vim-gitgutter'

call vundle#end()

syntax enable        " enable syntax processing
colorscheme molokai
set textwidth=79     " line longer than 79 columns will be broken
set tabstop=4        " number of visual spaces per tab
set shiftwidth=4     " number of spaces in tab when editting
set expandtab        " insert spaces when hitting tabs
set shiftround       " round indent to multiple of 'shiftwidth'
set number           " show line number
filetype indent on   " load filetype-specific indent files
set autoindent
set showcmd          " show command in bottom bar
set lazyredraw       " redraw only when we need to
set showmatch        " highlight matching [],{},(), ...
" enable deletion
set backspace=indent,eol,start
" Searching
set incsearch        " search as charcters are entered
set hlsearch         " hgihlight matches
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" show trailing whitespaces
:highlight ExtraWhitespace ctermbg=red guibg=red
:autocmd Syntax * syn match ExtraWhitespace /\s\+\%#\@<!$/ containedin=ALL

" NerdTree Configuration
let NERDTreeShowHidden=1    " show hidden files
map <C-n> :NERDTreeToggle<CR>
map <C-Right> :tabn<cr>
map <C-Left> :tabp<cr>

" Disable instert mode after creating a new line with o, O
nnoremap o o<Esc>
nnoremap O O<Esc>
