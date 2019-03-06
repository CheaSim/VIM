set nocompatible " be iMproved, required
filetype off " required
"Plugin 'vim-airline'
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'bling/vim-airline'
Bundle 'luochen1990/rainbow'
Bundle 'kien/ctrlp.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tell-k/vim-autopep8'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'iamcco/markdown-preview.vim'
"Plugin 'w0rp/ale'
"Bundle 'Valloric/YouCompleteMe'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" All of your Plugins must be added before the following line
call vundle#end() " required
filetype plugin indent on " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList - lists configured plugins
" :PluginInstall - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
"设置ctrlp的窗口位置
 let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:10,results:20'
"在vim 命令下cd 切换目录,可以实现ctrlp 切换目录,下面两条命令
let g:NERDTreeChDirMode = 2
let g:ctrlp_working_path_mode = 'rw'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|pyc)$'
set noswapfile
"""" others setting
"inoremap { {}<ESC>i<CR><ESC>V<O
"inoremap { {}<ESC>i
inoremap {<CR> {<CR>}<ESC>O
let g:rainbow_conf = {
	\	'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
	\	'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
	\	'operators': '_,_',
	\	'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
	\	'separately': {
	\		'*': {},
	\		'tex': {
	\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
	\		},
	\		'lisp': {
	\			'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
	\		},
	\		'vim': {
	\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
	\		},
	\		'html': {
	\			'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
	\		},
	\		'css': 0,
	\	}
	\}
let g:rainbow_active = 1
set helplang=cn  
set encoding=utf-8  
set cscopequickfix=s-,c-,d-,i-,t-,e-  
nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>  
nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>  
nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>  
nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>  
nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>  
nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>  
nmap <C-_>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>  
nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>  
let g:miniBufExplMapCTabSwitchBufs = 1  
let g:miniBufExplMapWindowNavVim = 1  
let g:miniBufExplMapWindowNavArrows = 1  
nnoremap <silent> <F12> :A<CR>  
nnoremap <silent> <F3> :Grep<CR>  
let g:SuperTabRetainCompletionType=2  
let g:SuperTabDefaultCompletionType="<C-X><C-O>"  
" 自动语法高亮  
 syntax on  
" 检测文件类型  
filetype on  
" 检测文件类型插件  
filetype plugin on  
" 不设定在插入状态无法用退格键和 Delete 键删除回车符  
set backspace=indent,eol,start  
set whichwrap+=<,>,h,l  
" 显示行号  
set number  
" 上下可视行数  
set scrolloff=6  
" replace tab with space  
set expandtab  
" 设定 tab 长度为 4  
set tabstop=4  
" 设置按BackSpace的时候可以一次删除掉4个空格  
set softtabstop=4  
" 设定 << 和 >> 命令移动时的宽度为 4  
set shiftwidth=4  
set smarttab  
set history=1024  
" 不突出显示当前行  
"set nocursorline  
" 覆盖文件时不备份  
set nobackup  
" 自动切换当前目录为当前文件所在的目录  
set autochdir  
" 搜索时忽略大小写，但在有一个或以上大写字母时仍大小写敏感  
set ignorecase  
set smartcase  
" 搜索到文件两端时不重新搜索  
set nowrapscan  
" 实时搜索  
set incsearch  
" 搜索时高亮显示被找到的文本  
set hlsearch  
" 关闭错误声音  
set noerrorbells  
set novisualbell  
"set t_vb=  
  
" 不自动换行  
"set nowrap  
"How many tenths of a second to blink  
set mat=2  
" 允许在有未保存的修改时切换缓冲区，此时的修改由 vim 负责保存  
set hidden  
" 智能自动缩进  
set smartindent  
" 设定命令行的行数为 1  
set cmdheight=1  
" 显示状态栏 (默认值为 1, 无法显示状态栏)  
set laststatus=2  
"显示括号配对情况  
set showmatch  
  
" 解决自动换行格式下, 如高度在折行之后超过窗口高度结果这一行看不到的问题  
set display=lastline  
" 设定配色方案  
colorscheme desert  
" 设置在状态行显示的信息  
set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ [%{(&fenc==\"\"?&enc:&fenc).(&bomb?\",BOM\":\"\")}]\ %c:%l/%L%)  
  
" 显示Tab符  
set list  
set listchars=tab:\|\ ,trail:.,extends:>,precedes:<  
"启动时不显示 捐赠提示  
set shortmess=atl  
  
"blank      空白  
"buffers    缓冲区  
"curdir     当前目录  
"folds      折叠  
"help       帮助  
"options    选项  
"tabpages   选项卡  
"winsize    窗口大小  
"slash      转换文件路径中的\为/以使session文件兼容unix  
"unix       设置session文件中的换行模式为unix  
set sessionoptions=blank,buffers,curdir,folds,help,options,tabpages,winsize,slash,unix,resize  
  
" 允许backspace和光标键跨越行边界  
set whichwrap+=<,>,h,l  
" backspace  
set backspace=eol,start,indent  
  
" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）  
set mouse=a  
set selection=exclusive  
set selectmode=mouse,key  
  
" 在被分割的窗口间显示空白，便于阅读  
set fillchars=vert:\ ,stl:\ ,stlnc:\  
  
" 高亮显示匹配的括号  
set showmatch  
  
" 匹配括号高亮的时间（单位是十分之一秒）  
set matchtime=5  
  
"编码设置  
set enc=utf-8  
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936  
  
" set mapleader  
let mapleader=","  
  
nmap J 5j  
nmap K 5k  
  
" Ctrl+a  
nmap <silent> <C-a> ggvG$  
  
" 选中状态下 Ctrl+c 复制  
vnoremap <c-c> "+y  
  
" Ctrl+v  
nmap <silent> <C-v> "+p  
  
" 窗口切换  
nnoremap <c-h> <c-w>h  
nnoremap <c-l> <c-w>l  
nnoremap <c-j> <c-w>j  
nnoremap <c-k> <c-w>k  
  
" 插入模式下上下左右移动光标  
inoremap <c-h> <left>  
inoremap <c-l> <right>  
inoremap <c-j> <c-o>gj  
inoremap <c-k> <c-o>gk  
  
" Ctrl+s  
" If the current buffer has never been saved, it will have no name,  
" call the file browser to save it, otherwise just save it.  
"nnoremap <silent> <C-S> :if expand("%") == ""<CR>browse confirm w<CR>else<CR>confirm w<CR>endif<CR>  
"imap <c-s> <c-o><c-s><CR>  
" Use CTRL-S for saving, also in Insert mode  
nmap <C-S> :update<CR>  
vmap <C-S> <C-C>:update<CR>  
imap <C-S> <C-O>:update<CR>  
  
" C++的编译和运行  
map <F9> :call CompileRunGpp()<CR>  
func! CompileRunGpp()  
exec "w"  
exec "!g++-8 -w % -o %< -DLOCAL "  
exec "!time ./%<"  
exec "w"
exec "! ./%<"
endfunc

"vim plugin setting  
  
"======================"  
set tags=tags  
set tags+=~/.vim/my-tags/tags  
set tags+=~/.vim/my-tags/stl-tags  
set tags+=~/.vim/my-tags/sys-tags  
set autochdir    
"Update ctags    
map <silent> <F8> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q<cr>   
  
""""""""""""""""""""""""""""""  
   " Tag list (ctags)  
""""""""""""""""""""""""""""""  
"if MySys() == "windows"                "设定windows系统中ctags程序的位置  
"   let Tlist_Ctags_Cmd = 'ctags'  
"elseif MySys() == "linux"              "设定Linux系统中ctags程序的位置  
   let Tlist_Ctags_Cmd = '/home/sphinx/.vim/ctags-5.8/ctags'  
"endif  
  
let Tlist_Show_One_File = 1            "不同时显示多个文件的tag，只显示当前文件的  
let Tlist_Exit_OnlyWindow = 1          "如果taglist窗口是最后一个窗口，则退出vim  
let Tlist_Use_Right_Window = 0         "在右侧窗口中显示taglist窗口  
let Tlist_OnlyWindow=1  
  
"let Tlist_Use_Right_Window=0  
"let Tlist_Sort_Type='name'  
"let Tlist_Show_Menu=1  
"let Tlist_Max_Submenu_Items=10  
"let Tlist_Max_Tag_length=16     "20  
"let Tlist_Use_SingleClick=0  
"let Tlist_Auto_Open=0  
"let Tlist_Close_On_Select=0  
"let Tlist_File_Fold_Auto_Close=1  
"let Tlist_GainFocus_On_ToggleOpen=0  
"let Tlist_Process_File_Always=1  
"let Tlist_WinHeight=10  
"let Tlist_WinWidth=18  
"let Tlist_Use_Horiz_Window=0  
  
let Tlist_Auto_Highlight_Tag = 1  
"let Tlist_Auto_Open = 1  
let Tlist_Auto_Update = 1  
let Tlist_Close_On_Select = 0  
let Tlist_Compact_Format = 0  
let Tlist_Display_Prototype = 0  
let Tlist_Display_Tag_Scope = 1  
let Tlist_Enable_Fold_Column = 0  
let Tlist_File_Fold_Auto_Close = 0  
let Tlist_GainFocus_On_ToggleOpen = 1  
let Tlist_Hightlight_Tag_On_BufEnter = 1  
let Tlist_Inc_Winwidth = 0  
let Tlist_Max_Submenu_Items = 1  
let Tlist_Max_Tag_Length = 30  
let Tlist_Process_File_Always = 0  
let Tlist_Show_Menu = 0  
let Tlist_Sort_Type = "order"  
let Tlist_Use_Horiz_Window = 0  
let Tlist_WinWidth = 31  
  
map <F12> :TlistOpen<CR>  
  
"OMNI  
"omnicppcoplete    
"-- omnicppcomplete setting --     
set completeopt=menu,menuone     
let OmniCpp_MayCompleteDot = 1     
" autocomplete with .     
let OmniCpp_MayCompleteArrow = 1     
" autocomplete with ->     
let OmniCpp_MayCompleteScope = 1     
" autocomplete with ::     
let OmniCpp_SelectFirstItem = 2     
" select first item (but don't insert)     
let OmniCpp_NamespaceSearch = 2     
" search namespaces in this and included files     
let OmniCpp_ShowPrototypeInAbbr = 1     
" show function prototype in popup window     
let OmniCpp_GlobalScopeSearch=1     
let OmniCpp_DisplayMode=1     
let OmniCpp_DefaultNamespaces=["std"]    
set nocp    
filetype plugin on    
  
"WinManager  
let g:winManagerWindowLayout='FileExplorer|TagList'  
"let g:winManagerWindowLayout='FileExplorer|BufExplorer|TagList'  
let g:persistentBehaviour=0  
let g:winManagerWidth=20  
let g:defaultExplorer=1  
nmap wm :WMToggle<cr>  
  
"QuickFix  
"nmap <F6> :cn<cr>  
"nmap <F7> :cp<cr>  
  
"MiniBufExplorer  
"let g:miniBufExplMapWindowNavVim = 1  
"let g:miniBufExplMapWindowNavArrows = 1  
let g:miniBufExplModSelTarget = 1  
let g:miniBufExplorerMoreThanOne = 2  
let g:miniBufExplModSelTarget = 0  
let g:miniBufExplUseSingleClick = 1  
let g:miniBufExplMapWindowNavVim = 1  
let g:miniBufExplVSplit = 15    "25  
let g:miniBufExplSplitBelow=1  
  
let g:bufExplorerSortBy = "name"  
  
autocmd BufRead,BufNew :call UMiniBufExplorer  
  
map <leader>u :TMiniBufExplorer<cr>  
  
  
"AutoClose  
"let g:AutoClosePairs = {'(': ')', '{': '}', '[': ']', '"': '"', "'": "'"}  
let g:AutoClosePairs = {'(': ')', '{': '}', '[': ']', '"': '"', "'": "'"}   
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""   
"   Maintainer:   
"   "       Geek SphinX  
"   "       topcodersphinx@gmail.com  
"   "  
"   "   Version:  
"   "       1.0 - Thu Nov  1 17:21:44 CST 2012  
"   "  
"   """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  
  
" Sets how many lines of history VIM has to remember  
" set history=1024  
"  
" " Auto syntax highlight  
" set syntax=on  
"  
" " Check file format  
" filetype on  
"  
" " Enable filetype plugins  
" filetype plugin on  
" filetype indent on  
"  
" " Sets non VI compatible mode  
" set nocompatible  
"  
" " Set to auto read when a file is changed from the outside  
" set autoread  
"  
" " With a map leader it's possible to do extra key combinations  
" " like <leader>w saves the current file  
" let mapleader = ","  
" let g:mapleader = ","  
"  
" " Fast saving  
" nmap <leader>w :w<cr>  
" nmap <leader>q :q<cr>  
"  
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  
" " => VIM user interface  
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  
" " Replace J, K  
" nmap J 5j  
" nmap K 5k  
"  
" " Ctrl+A to select all content in visual mode  
" nmap <silent> <C-a> ggvG$  
"  
" " Ctrl+C to copy  
" vnoremap <C-c> "+y  
"  
" " Ctrl+V to paste  
" nmap <silent> <C-v> "+p  
"  
" " Set 7 lines to the cursor - when moving vertically using j/k  
" set so=7  
"  
" " Turn on the Wild menu  
" set wildmenu  
"  
" " Ignore compiled files  
" set wildignore=*.o,*~,*.pyc  
"  
" "Always show current position  
" set ruler  
"  
" " Height of the command bar  
" set cmdheight=2  
"  
" " A buffer becomes hidden when it is abandoned  
" set hid  
"  
" " Configure backspace so it acts as it should act  
" set whichwrap+=<,>  
" set backspace=indent,eol,start  
"  
" " Ignore case when searching  
" set ignorecase  
"  
" " When searching try to be smart about cases   
" set smartcase  
"  
" " Highlight search results  
" set hlsearch  
"  
" " Makes search act like search in modern browsers  
" set incsearch  
"  
" " Don't redraw while executing macros (good performance config)  
" set lazyredraw  
"  
" " For regular expressions turn magic on  
" set magic  
"  
" " Show matching brackets when text indicator is over them  
" set showmatch  
"  
" " How many tenths of a second to blink when matching brackets  
" set mat=2  
"  
" " No annoying sound on errors set noerrorbells  
" set novisualbell  
" set t_vb=  
" set tm=500  
"  
" " Show line number  
" set number  
"  
" " Highlight over 80 columns  
" highlight OverLength ctermbg=red ctermfg=white guibg=#592929  
" match OverLength /\%81v.\+/  
"  
" " Show Tab symbol  
" set list  
" set listchars=tab:\|\ ,trail:.,extends:>,precedes:<  
"  
" " Switch windows  
" nnoremap <C-h> <C-w>h  
" nnoremap <C-l> <C-w>l  
" nnoremap <C-j> <C-w>j  
" nnoremap <C-k> <C-w>k  
"  
" " Move cursor in insert mode  
" inoremap <C-h> <C-o>h  
" inoremap <C-l> <C-o>l  
" inoremap <C-j> <C-o>j  
" inoremap <C-k> <C-o>k  
"  
"  
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  
" " => Colors and Fonts  
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  
" " Enable syntax highlighting  
" syntax enable  
"  
" "colorscheme desert  
" colorscheme molokai  
" set background=dark  
"  
" " Set extra options when running in GUI mode  
" if has("gui_running")  
"     set guioptions-=T  
"         set guioptions+=e  
"             set t_Co=256  
"                 set guitablabel=%M\ %t  
"                 endif  
"  
"                 " Set utf8 as standard encoding and en_US as the standard  
"                 language  
"                 set encoding=utf8  
"  
"                 " Use Unix as the standard file type  
"                 set ffs=unix,dos,mac  
"  
"                 " Use Inconsolata as the gui font  
"                 set guifont=Inconsolata\ 15  
"  
"                 """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  
" => Text, tab and indent related  
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  
" " Use spaces instead of tabs  
" set expandtab  
"  
" " Be smart when using tabs ;)  
" set smarttab  
"  
" " 1 tab == 4 spaces  
" set shiftwidth=4  
" set tabstop=4  
"  
" " Linebreak on 500 characters  
" set lbr  
" set tw=500  
"  
" set ai "Auto indent  
" set si "Smart indent  
" set wrap "Wrap lines  
"  
"  
" """"""""""""""""""""""""""""""  
" " => Status line  
" """"""""""""""""""""""""""""""  
" " Always show the status line  
" set laststatus=2  
"  
" " Format the status line  
" "set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \  
" Line:\ %l  
"  
"  
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  
" " => Mouse  
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  
" set mouse=a  
" set selection=exclusive  
" set selectmode=mouse,key  
"  
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  
" " => Plugins  
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  
set clipboard=unnamed
autocmd BufNewFile *.cpp exec ":call SetTitle()"
func! SetTitle()
    if &filetype == 'cpp'
        let l = 0
        let l = l + 1 | call setline(l,"#include<bits/stdc++.h>")
        let l = l + 1 | call setline(l,"using namespace std;")
        let l = l + 1 | call setline(l,"#define rep(i,a,n) for(int i=(a);i<(n);i++)")
        let l = l + 1 | call setline(l,"#define per(i,a,n) for(int i=(n-1);i>=(a);i--)")
        let l = l + 1 | call setline(l,"#define fi first")
        let l = l + 1 | call setline(l,"#define se second")
        let l = l + 1 | call setline(l,"typedef pair <int,int> pII;")
        let l = l + 1 | call setline(l,"typedef long long ll;")
        let l = l + 1 | call setline(l,"const int INF = 0x3f3f3f3f;")
        let l = l + 1 | call setline(l,"//head")
        let l = l + 1 | call setline(l,'int main(){')
        let l = l + 1 | call setline(l,'#ifdef LOCAL')
        let l = l + 1 | call setline(l,'    freopen("1.in","r",stdin);')
        let l = l + 1 | call setline(l,'#endif')
        let l = l + 1 | call setline(l,'    return 0;')
        let l = l + 1 | call setline(l,'}')
    endif
    autocmd BufNewFile * normal G
endfunc

hi Pmenu ctermfg=56 ctermbg=255
hi xterm ctermfg=56 ctermbg=255
set cursorline

let g:mkdp_path_to_chrome = "open -a Google\\ Chrome"
let g:indentLine_char='┆'
let g:indentLine_enabled = 1

"autopep8设置"
let g:autopep8_disable_show_diff=1
set cursorline
