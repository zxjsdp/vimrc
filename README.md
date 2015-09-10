vimrc
=====
My .vimrc backup.

Some useful tips:
-----------------

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


Plugins used:
-------------

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
