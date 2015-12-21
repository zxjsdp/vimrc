vimrc
=====

My .vimrc backup.

Installation
------------

Please refer to the [Quick Start](https://github.com/VundleVim/Vundle.vim#quick-start) part on [Vundle.vim GitHub page](https://github.com/VundleVim/Vundle.vim).

1. Set up Vundle: `$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`.
2. Copy [.vimrc](https://github.com/zxjsdp/vimrc/blob/master/.vimrc) from this repository to home directory.
3. Install Plugins:
   - Launch vim and run `:PluginInstall`
   - To install from command line: `vim +PluginInstall +qall`


Plugins Used
------------

- Vundle.vim (Plugin manager)

    <https://github.com/VundleVim/Vundle.vim>

- accelerated-smooth-scroll

    <https://github.com/yonchu/accelerated-smooth-scroll>

- ack.vim

    <https://github.com/mileszs/ack.vim>

- auto-pairs

    <https://github.com/jiangmiao/auto-pairs>

- Ctags
- ctrlp.vim

    <https://github.com/kien/ctrlp.vim>

- indentLine

    <https://github.com/Yggdroot/indentLine>

- neocomplete.vim

    <https://github.com/Shougo/neocomplete.vim>

- nerdcommenter

    <https://github.com/scrooloose/nerdcommenter>

- nerdtree

    <https://github.com/scrooloose/nerdtree>

- python-syntax

    <https://github.com/hdima/python-syntax>

- syntastic

    <https://github.com/scrooloose/syntastic>

- tagbar

    <https://github.com/majutsushi/tagbar>

- vim-airline

    <https://github.com/bling/vim-airline>

- vim-surround

    <https://github.com/tpope/vim-surround>

- YouCompleteMe

    <https://github.com/Valloric/YouCompleteMe>


Some Useful Tips
----------------

- Press jk to exit from insert mode:

        :imap jk <Esc>

- Press <F5> to run Python script

        map <F5> :w<cr>:!python %<cr>

- F5编译和运行C程序，F6编译和运行C++程序

        " windows下使用需要去掉./

        " C的编译和运行
        map <F5> :call CompileRunGcc()<CR>
        func! CompileRunGcc()
        exec "w"
        exec "!gcc % -o %<"
        exec "! ./%<"
        endfunc

        " C++的编译和运行
        map <F6> :call CompileRunGpp()<CR>
        func! CompileRunGpp()
        exec "w"
        exec "!g++ % -o %<"
        exec "! ./%<"
        endfunc

