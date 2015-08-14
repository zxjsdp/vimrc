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
- ack.vim
- auto-pairs
- Ctags
- ctrlp.vim
- indentLine
- neocomplete.vim
- nerdcommenter
- nerdtree
- python-syntax
- syntastic
- tagbar
- vim-airline
- vim-surround
- YouCompleteMe

