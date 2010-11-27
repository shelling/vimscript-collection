set guioptions=egt
set lines=40
set columns=120



"colorscheme freya
colorscheme railscasts


if has("gui_macvim")
  set transp=8
  set lines=50 
  map <leader>F :set fullscreen!<CR>
  set gfn=Monaco:h13
  set fuoptions=maxvert,maxhorz
endif

