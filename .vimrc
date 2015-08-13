set et
set shiftwidth=4
set ignorecase
set wrap
color evening

set encoding=utf-8  " when file open
set termencoding=utf-8 " terminal encoding
set fileencoding=utf-8 " when file saving

" vim 환경설정 
set nu
set ai
set ts=4
set bg=dark

"창 크기 조정
"nnoremap <S-Left>   <C-W><<CR> 
"nnoremap <S-Right>  <C-W>><CR> 
"nnoremap <S-Up>     <C-W>-<CR> 
"nnoremap <S-Down>   <C-W>+<CR>
"nnoremap <s-h> <C-W><
"nnoremap <s-j> <C-W>-
"nnoremap <s-k> <C-W>+
"nnoremap <s-l> <C-W>>

" ctags database path 설정 
set tags=/home/dplee/work/tags  " ctags DB

" cscope database path 설정 
cs add /home/dplee/work/cscope.out /home/dplee/work
cs add /home/dplee/work/3rd_iter_trunk/cscope.out /home/dplee/work/3rd_iter_trunk
set csprg=/usr/bin/cscope     " cscope 위치 
set csto=0                    " cscope DB search first
set cst                       " cscope DB tags DB search
set nocsverb                  " verbose off
set csverb

" taglist 환경설정 
filetype on
nmap <F7> :TlistToggle<CR>
let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_Inc_Winwidth = 0
let Tlist_Exit_OnlyWindow = 0
let Tlist_Auto_Open = 0
let Tlist_Use_Right_Window = 1

" Source Explorer 환경설정 
nmap <F8> :SrcExplToggle<CR>
nmap <C-H> <C-W>h
nmap <C-J> <C-W>j
nmap <C-K> <C-W>k
nmap <C-L> <C-W>l

" 중요 !!!
" Source Explorer 가 다른 plugin 과 충돌하지 않도록
" 다른 plugin 이 사용하는 buffer 가 무엇이 있는지를 알려줌.
" vi 를 열고 plugin 수행시킨 후 :buffers! 의 결과로
" 나오는 것을 여기 list 에 넣어줌
let g:SrcExpl_pluginList = [ 
    \ "Source_Explorer", 
    \ "NERD_tree_1" 
    \ ] 
let g:SrcExpl_winHeight = 8
let g:SrcExpl_refreshTime = 100
let g:SrcExpl_jumpKey = "<ENTER>"
let g:SrcExpl_gobackKey = "<SPACE>"
let g:SrcExpl_isUpdateTags = 0

" NERD Tree 환경설정 
let NERDTreeWinPos = "left"
nmap <F9> :NERDTreeToggle<CR>
"vi start 시 곧바로 nerd tree 시작 
"autocmd vimenter * NERDTree

" This is commit test