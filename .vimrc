" vundle start
set nocompatible
filetype off

set rtp+=~/.vim/vendor/vundle
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'scrooloose/nerdtree'
Bundle 'ervandew/supertab'
Bundle 'vim-scripts/nginx.vim'
Bundle 'jQuery'
Bundle 'shelling/railscasts.vim'
Bundle 'JSON.vim'
Bundle 'applescript.vim'

" vundle end

if $COLORTERM == 'true' " set within shell rc
    set term=gnome-256color
endif

filetype plugin indent on
syntax on
colorscheme railscasts

set nocompatible
set number
set shiftwidth=4
set softtabstop=4
set linebreak
set nowrap
set history=100
set background=dark
set backspace=2
set expandtab
set autoindent
set incsearch
set hlsearch
set ruler
set showcmd
set cursorline
"set undolevels=0


" conventional mapping
map X dWWP
map mm :marks<CR>
map <leader>w :w<CR>
map <leader>v :vnew<CR>
map <leader>n :new<CR>
map <leader>q :q<CR>
map <leader>Q :q!<CR>
map <leader>c :close<CR>
map <leader>s :set hls!<BAR>set hls?<CR>
map <leader>e :NERDTreeToggle<CR>
map <leader>f :FufFileWithCurrentBufferDir<CR>
map <leader>F :FufFile<CR>
map <leader>b :FufBuffer<CR>


map! <C-a> <ESC>0i
map! <C-e> <ESC>A
map! <C-f> <Right>
map! <C-b> <Left>

" mapping for tags
map tr :!rtags -R --vi .<CR>
map tc :!ctags *<CR>

" mapping for programming short cut
map ,b bi{<ESC>ea}<ESC>
map ,p bi(<ESC>ea)<ESC>
map! <C-o>l <ESC>la
map! <C-o>o ()<ESC>i
map! <C-o>k []<ESC>i
map! <C-o>v <><ESC>i
map! <C-o>u {}<ESC>i
map! <C-o>s ''<ESC>i
map! <C-o>d ""<ESC>i
" mapping for eruby
map! <C-o>i <ESC>a\|\|<ESC>i
map! <C-o>% <%  %><ESC>hhi
map! <C-o>5 <%=  %><ESC>hhi
" mapping for perl
map! <C-o>r ->
map! <C-o>m => 
map! <C-o>n ::
" mapping for html
map! <C-o>! <!--  --><ESC>3hi
map! <C-o>c /*  */<ESC>2hi

" mapping for tab
nmap t1 :tabfirst<CR>
nmap t0 :tablast<CR>
nmap tn :tabnew<CR>
nmap tj	:tabn<CR>
nmap tk	:tabp<CR>

au BufRead,BufNewFile /usr/local/etc/nginx/conf/* set ft=nginx 
au BufRead,BufNewFile /etc/nginx/* set ft=nginx 
