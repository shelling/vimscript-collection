set nocompatible
set number
set shiftwidth=2
set softtabstop=2
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
"set undolevels=0

set cursorline
"set lines=36
"set columns=120

syntax on

" verify terminal type
if &term == "xterm-256color"
    " For:
    "   iTerm.app
  colorscheme railscasts
elseif &term == "xterm-color"
    " For:
    "   Mac OS X Leopard Terminal.app
  colorscheme blackboard
else
  colorscheme blackboard
endif

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
map <leader>f :FuzzyFinderFile<CR>
map <leader>b :FuzzyFinderBuffer<CR>


map! <C-e> <ESC>A

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

" abbreviation for html
ab htmltg <html></html><ESC>6h
ab headtg <head></head><ESC>6h
ab bodytg <body></body><ESC>6h
ab tabletg <table></table><ESC>7h
ab brtg <br/><ESC>
ab hrtg <hr/><ESC>
ab divtg <div></div><ESC>6h
ab spantg <span></span><ESC>6h
ab imgtg <img src=""/><ESC>3h

" set for including plugins in ~/.vim/plugin
filetype on
filetype plugin on

" textmate plugin
"set runtimepath+=~/.vim/textmateOnly
"set runtimepath+=~/.vim/textmateOnly/after

" html plugin
"set runtimepath+=~/.vim/html
"helptags ~/.vim/html/doc

