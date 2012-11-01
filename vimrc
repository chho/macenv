"初始环境设置
call pathogen#infect()
syntax on
filetype plugin indent on

"取消兼容性相关设置
set nocompatible
set modelines=0

"设置tab为4字符并转换为空格
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set autoindent

"设置编码
set encoding=utf-8
set fileencodings=utf-8,gb18030,gb2312,big5

"光标移动到buffer顶部或底部时保持3行距离
set scrolloff=3

"显示所处模式
set showmode
set showcmd
set ruler

"更改状态栏的格式
set rulerformat=%43(%=%m%r%h%w#%n\ [%{&fileformat}:%{(&fenc==\"\"?&enc:&fenc).((exists(\"\+bomb\")\ &&\ &bomb)?\"\+B\":\"\").\"\"}:%{strlen(&ft)?&ft:'**'}]\ [%L\\%l,%c]\ %p%%%)

"允许不保有当前buffer而进行切换
set hidden

"命令补全菜单
set wildmenu
set wildmode=list:longest

"关闭边界蜂鸣
set visualbell

"光标所在行高亮显示
set cursorline

"告诉vim与终端有较快的连接，可以有更平滑的输出
set ttyfast

"解决删除兼容性的问题
set backspace=indent,eol,start

"显示状态栏
set laststatus=2

"显示行号
set relativenumber

"生成undo文件
set undofile

"缺省正则插入\v
nnoremap / /\v
vnoremap / /\v

"搜索时智能忽略大小写
set ignorecase
set smartcase

"缺省全局替换
set gdefault

"高亮搜索
set incsearch
set showmatch
set hlsearch

"设置换行
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

"显示换行符
set list
set listchars=tab:▸\ ,eol:¬

"切换j和k为软换行
nnoremap j gj
nnoremap k gk

"括号自动匹配
inoremap ( ()<LEFT>
inoremap [ []<LEFT>
inoremap { {}<LEFT>
inoremap ' ''<LEFT>
inoremap " ""<LEFT>

"用jj切换回命令模式
inoremap jj <ESC>

"自动设置当前编辑的文件路径为工作路径
set autochdir"

"leader设置
"取消搜索
nnoremap <leader><space> :noh<cr>
"分割窗口并把cursor转移到新开的窗口中
nnoremap <leader>w <C-w>v<C-w>l

"Function
"NERDTree
nnoremap <silent> <F3> :NERDTreeToggle<CR>

"调用gofmt格式化go文档
function! GoFormat()
    if &filetype=="go"
        :!gofmt -w %
        :e!
    endif
endfunction

nnoremap <silent> <F4> :call GoFormat()<CR>

"调用go run运行当前代码
function! GoRun()
    if &filetype=="go"
        :!go run %
    endif
endfunction

nnoremap <silent> <F5> :call GoRun()<CR>
