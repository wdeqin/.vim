" To disable a plugin, add it's bundle name to the following listlet
"let g:pathogen_disabled = [ 'YouCompleteMe' ]
execute pathogen#infect()

if has('gui_running')
    set background=dark
    colorscheme solarized
    set guifont=YaHei\ Consolas\ Hybrid\ 12
    set lines=43 columns=164
    " highlight current column
    set cursorcolumn
else
    set cursorcolumn
    set lines=43 columns=120
    colorscheme slate
endif

syntax on
filetype plugin indent on

" show status bar
set laststatus=2
let g:Powerline_colorscheme='solarized256'

" show cursor current position
set ruler

" highlight current line
set cursorline

" highlight search result(s)
set hlsearch

" disabled split long line
set nowrap

set number!
set backspace=indent,eol,start
set shiftwidth=4
set autoindent!
set tabstop=4
set expandtab!
set colorcolumn=80
set showcmd

" enable code fold
set foldmethod=syntax
" open all fold on startup
set nofoldenable

" disabled cursor blink
set gcr=a:block-blinkon0
" hide scroll bar
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" hide menu 
set guioptions-=m
" hide toolbar
set guioptions-=T

" NERDTree file browser
" open NERDTree when startup
" autocmd vimenter * NERDTree

" open NERDTree when startup with no file
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

" Fullscreen when start up
" autocmd GUIEnter * call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)

" NERDTreeToggle Map
map <C-n> :NERDTreeToggle<CR>

" Close NERDTree when no file left
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" NERDTreeToggle Position
let NERDTreeWinPos="right"

" Show hidden files
" let NERDTreeShowHidden=1

" Hide help info
let NERDTreeMinimalUI=1

" Detet buf when delete file
let NERDTreeAutoDeleteBuffer=1

" define hotkey prefix <leader>
let mapleader=";"

" UltiSnipes
" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-k>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" " If you want :UltiSnipsEdit to split your window.
" let g:UltiSnipsEditSplit="vertical"

" Emmet
let g:user_emmet_mode='a'    "enable all function in all mode.
let g:user_emmet_install_global = 0
"let g:user_emmet_leader_key='<C-Y>'
autocmd FileType html,css EmmetInstall

nmap <leader>q :q<CR>
nmap <leader>ww <C-W><C-W>
nmap <leader>wh <C-W>h
nmap <leader>wj <C-W>j
nmap <leader>wk <C-W>k
nmap <leader>wl <C-W>l
" Toggle highlighting
nmap <leader>hl :set hlsearch!<CR>
" Turn off highlighting until next search
nmap <leader>nl :noh<CR>
" <F11> Fullscreen Toggle
" nmap <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>
" Taglist
"nmap <leader>tl :Tlist<CR>
nmap <leader>fl :NERDTreeToggle<CR>
nmap <leader>tl :Tlist<CR>
nmap <leader>nt :NERDTree 
nmap <leader>pp :"+pp<CR>
nmap <leader>yy :"+yy<CR>
nmap <leader>yaw :"+yaw<CR>

function! SetTag()
    if filereadable("tags")
        :set tags=tags<CR>
    endif
endfunction
nmap <leader>st :call SetTag()<CR>
nmap <leader>gt :silent !ctags -R<CR>
nmap <leader>ws :NERDTree $WS<CR>

" YCM 补全菜单配色
" " 菜单
" highlight Pmenu ctermfg=2 ctermbg=3 guifg=#005f87 guibg=#EEE8D5
" " 选中项
" highlight PmenuSel ctermfg=2 ctermbg=3 guifg=#AFD700 guibg=#106900
" " 补全功能在注释中同样有效
" let g:ycm_complete_in_comments=1
" " 允许 vim 加载 .ycm_extra_conf.py 文件，不再提示
let g:ycm_confirm_extra_conf=0
" " 开启 YCM 标签补全引擎
let g:ycm_collect_identifiers_from_tags_files=1
" " 引入 C++ 标准库tags
" set tags+=/data/misc/software/misc./vim/stdcpp.tags
" " YCM 集成 OmniCppComplete 补全引擎，设置其快捷键
" inoremap <leader>; <C-x><C-o>
" " 补全内容不以分割子窗口形式出现，只显示补全列表
" set completeopt-=preview
"vim-autoformat " 从第一个键入字符就开始罗列匹配项
" let g:ycm_min_num_of_chars_for_completion=1
" " 禁止缓存匹配项，每次都重新生成匹配项
" let g:ycm_cache_omnifunc=0
" " 语法关键字补全         
" let g:ycm_seed_identifiers_with_syntax=1
" let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'

" encoding
set fileencodings=utf-8,ascii,gbk,gb2312,gb18030,cp936
set termencoding=utf-8
set encoding=utf-8

" git clone https://github.com/scrooloose/nerdtree.git
" git clone https://github.com/altercation/vim-colors-solarized.git
" git clone https://github.com/fatih/vim-go.git
" git clone https://github.com/SirVer/ultisnips.git
" git clone https://github.com/honza/vim-snippets.git
" git clone https://github.com/Lokaltog/vim-powerline.git
" git clone https://github.com/Valloric/YouCompleteMe.git
" git clone https://github.com/Valloric/ycmd.git
" git clone https://github.com/Chiel92/vim-autoformat.git
" git clone http://github.com/mattn/emmet-vim.git
