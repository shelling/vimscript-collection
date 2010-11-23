set guioptions=egt
set lines=40
set columns=120



"colorscheme freya
colorscheme railscasts


if has("gui_macvim")
  set transp=8
  set lines=60 "60 is maxima on MBP
  map <leader>F :set fullscreen!<CR>
  "set gfn=Manaco:h12
  set fuoptions=maxvert,maxhorz
endif

