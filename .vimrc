
" ========= 基础设置 =========
set nocompatible              " 关闭兼容模式，使用 Vim 的增强模式
set encoding=utf-8
set fileencodings=utf-8,gbk  " 自动识别编码
set termencoding=utf-8

set number                    " 显示行号
set relativenumber           " 显示相对行号
set ruler                    " 显示光标位置
set cursorline               " 高亮当前行
set showcmd                  " 命令行显示键入命令
set showmode                 " 显示当前模式
set wildmenu                 " 命令补全增强
set hidden                   " 允许在不保存的情况下切换 buffer

" ========= 缩进与制表 =========
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab               " 将 tab 转为空格

" ========= 搜索相关 =========
set ignorecase              " 忽略大小写
set smartcase               " 如果有大写字母，则区分大小写
set incsearch               " 输入时就显示搜索结果
set hlsearch                " 高亮搜索

" ========= 视觉美化 =========
syntax enable               " 启用语法高亮
set background=dark         " 配合主题使用，默认 dark
colorscheme desert          " 主题（可换 molokai / gruvbox 等）
set laststatus=2            " 总是显示状态栏
set showtabline=2           " 总是显示标签栏

" ========= 粘贴模式 =========
set pastetoggle=<F2>        " 按 F2 进入粘贴模式

" ========= 光标移动体验优化 =========
set backspace=indent,eol,start
set whichwrap+=<,>,h,l      " 允许光标左右穿行到上下行
set scrolloff=3             " 光标上下留边
set sidescrolloff=5         " 水平滚动边距

" ========= 代码折叠 =========
set foldmethod=syntax
set foldlevelstart=99       " 启动时不折叠

" ========= 插件支持（使用 vim-plug）=========
call plug#begin('~/.vim/plugged')

" 基础功能增强
Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdtree'       " 目录树
Plug 'vim-airline/vim-airline'   " 状态栏美化
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'          " 模糊查找
Plug 'preservim/nerdcommenter'   " 快速注释

" 语法增强
Plug 'sheerun/vim-polyglot'      " 支持多语言语法高亮
Plug 'jiangmiao/auto-pairs'      " 自动括号补全
Plug 'Yggdroot/indentLine'       " 显示缩进线
Plug 'neoclide/coc.nvim',{'branch':'release'}   "代码格式化

" Git 支持
Plug 'tpope/vim-fugitive'

" 颜色主题（任选）
Plug 'morhetz/gruvbox'
Plug 'altercation/vim-colors-solarized'

call plug#end()

" ========= NERDTree 快捷键 =========
nnoremap <F3> :NERDTreeToggle<CR>

" ========= 中文支持 ========= "
set helplang=cn
set langmenu=zh_CN.UTF-8
language messages en_US.UTF-8
set fileformats =unix,dos,mac

" ========= 自动保存文件类型 =========
autocmd BufNewFile,BufRead *.c,*.h,*.cpp,*.py,*.java,*.sh setlocal tabstop=4 shiftwidth=4 expandtab

" ========= 自动高亮括号 =========
set showmatch
set matchtime=2

