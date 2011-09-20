"配色方案，不知道会不会有更好的Scheme，设置透明度，如果不好用的话，把Preferences...中的Use experimental renderer选中
colorscheme torte
set transparency=15

"设置编码
set encoding=utf-8
set fileencodings=utf-8,gb18030,gb2312,big5
"set fileencodings=ucs-bom,utf-8,utf-16,cp936,gb18030,gb2312,big5,euc-jp,euc-kr,latin1

"设置字体
set guifont=Monaco:h14

"设置行间距
set linespace=4

"显示行号和行号栏宽度
set number
set numberwidth=4

"显示回车
set list

"禁止自动换行
set nowrap
"判断文件类型自动缩进
filetype plugin indent on
"打开文件高亮
syntax on
"打开搜索高亮
set hlsearch
"用< >调整缩进时的长度
set shiftwidth=4
"在insert模式下，按tab键输入4空格长的空间
set softtabstop=4
"将所有tab转换为空格
set expandtab
"制表符的长度，4个空格
set tabstop=4
"初始窗口宽度，高度
set columns=195
set lines=45
"初始窗口位置
winpos 52 42
"在输入命令时列出匹配项目
set wildmenu
"显示光标位置
set ruler
"分割窗口时保持相等的宽高
set equalalways
"取消自动备份
set nobackup
"匹配括号
set matchpairs=(:),{:},[:],<:>
"隐藏工具条
set guioptions-=T
"Tab显示文件名
set guitablabel=%t

"Plugins
"TagList
let Tlist_Use_Right_Window=1
let Tlist_Show_One_File=1
nnoremap <silent> <F2> :TlistToggle<CR>

"NERDTree
let NERDTreeChDirMode=2
nnoremap <silent> <F3> :NERDTreeToggle<CR>

"Run Python
nnoremap <silent> <F5> :!python %<CR>
