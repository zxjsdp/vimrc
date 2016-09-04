"==================================================================================
" Basic settings
"==================================================================================

set tabstop=4        " size of a hard tabstop
set shiftwidth=4     " 设定 << 和 >> 命令移动时的宽度为 4
set softtabstop=4    " 使得按退格键时可以一次删掉 4 个空格

set smarttab         " make "tab" insert indents instead of tabs at the beginning of a line
set expandtab        " always uses spaces instead of tab characters
set nu!              " 显示行号
set cursorline       " 突出显示当前行
set linebreak        " 整词换行
set smartindent      " 开启新行时使用智能自动缩进

syntax enable
syntax on

set hlsearch         " 高亮显示搜索结果 
set incsearch

set ruler            "在编辑过程中，在右下角显示光标位置的状态行

set completeopt=longest,menu    " 关掉智能补全时的预览窗口 
set showmatch        "设置匹配模式，类似当输入一个左括号时会匹配相应的那个右括号 
set smartindent      " 智能对齐方式 
set shiftwidth=4     " 换行时行间交错使用4个空格 
set autoindent       " 自动对齐 
set ai!              " 设置自动缩进 

hi comment ctermfg=blue


set history=700      " 历史记录大小
set undolevels=100   " Undo level

set ignorecase       "搜索忽略大小写


"==================================================================================
" Vundle settings
"==================================================================================

set nocompatible     " be iMproved, required000
filetype off         " required0

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" -- Usage
" -- The following are examples of different formats supported.
" -- Keep Plugin commands between vundle#begin/end.

" -- plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'

" -- plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'

" -- Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'

" -- git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'

" -- The sparkup vim script is in a subdirectory of this repo called vim.
" -- Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" -- Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}


Plugin 'yonchu/accelerated-smooth-scroll'
Plugin 'mileszs/ack.vim'
Plugin 'auto-pairs'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'Yggdroot/indentLine'
"Plugin 'Shougo/neocomplete.vim'
Plugin 'klen/python-mode'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'python-syntax'
Plugin 'scrooloose/syntastic'
Plugin 'majutsushi/tagbar'
Plugin 'vim-airline'
Plugin 'tpope/vim-surround'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rust-lang/rust.vim'      " Rust support


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line



"==================================================================================
" Plugin settings
"==================================================================================

" NERDTree
autocmd StdinReadPre * let s:std_in=1 complete
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>



" Tabbar
nmap <F8> :TagbarToggle<CR>



" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_user_command = 'find %s -type f'        " MacOSX/Linux



" vim-airline
let g:airline#extensions#tabline#enabled = 1



" python-syntax
let python_highlight_all = 1



" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0



" IdentLine
"let g:indentLine_enabled = 0

" Vim
let g:indentLine_color_term = 239

"GVim
"let g:indentLine_color_gui = '#A4E57E'

" none X terminal
"let g:indentLine_color_tty_light = 2 " (default: 4)
"let g:indentLine_color_dark = 2 " (default: 2)"



let g:Powerline_symbols='fancy'
set laststatus=2
set t_Co=256
let g:airline_powerline_fonts = 1



"==================================================================================
" Other settings
"==================================================================================

" Highlight excess line length
" 高亮超出长度限制的字符
augroup vimrc_autocmds
    autocmd!
    " highlight characters past column 180
    autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=red
    autocmd FileType python match Excess /\%80v.*/
    autocmd FileType python set nowrap
    augroup END



" <F5> 运行python程序
" 推荐使用 python-mode 提供的 <leader>r 方式来运行当前 Python 文件
map <F5> :w<cr>:!python %<cr>



" Press jk to exit from insert mode
:imap jk <Esc>



" 配置多语言环境,解决中文乱码问题
if has("multi_byte")
    " UTF-8 编码
    set encoding=utf-8
    set termencoding=utf-8
    set formatoptions+=mM
    set fencs=utf-8,gbk
    if v:lang =~? '^/(zh/)/|/(ja/)/|/(ko/)'
        set ambiwidth=double
    endif
    if has("win32")
        source $VIMRUNTIME/delmenu.vim
        source $VIMRUNTIME/menu.vim
        language messages zh_CN.utf-8
    endif
else
    echoerr "Sorry, this version of (g)vim was not compiled with +multi_byte"
endif
