vimrc
=====

My `.vimrc` backup.

Installation
------------

Please refer to the [Quick Start](https://github.com/VundleVim/Vundle.vim#quick-start) part on [Vundle.vim](https://github.com/VundleVim/Vundle.vim) GitHub page.

1. Set up Vundle: `$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`.
2. Copy [.vimrc](https://github.com/zxjsdp/vimrc/blob/master/.vimrc) from this repository to your home directory.
3. Install Plugins (choose one):
   - Launch vim and run `:PluginInstall`
   - To install from command line: `$ vim +PluginInstall +qall`

**IMPORTANT**: The `.vimrc` is hidden file. It DOSE exists after you clone the repository to local!

Plugins Used
------------

1. Vundle.vim (Plugin manager) <https://github.com/VundleVim/Vundle.vim>

2. accelerated-smooth-scroll <https://github.com/yonchu/accelerated-smooth-scroll>

3. ack.vim <https://github.com/mileszs/ack.vim>

4. auto-pairs <https://github.com/jiangmiao/auto-pairs>

5. Ctags

6. ctrlp.vim <https://github.com/kien/ctrlp.vim>

7. indentLine <https://github.com/Yggdroot/indentLine>

8. neocomplete.vim <https://github.com/Shougo/neocomplete.vim>

9. python-mode <https://github.com/klen/python-mode>

    Python-mode is a vim plugin that helps you to create python code very quickly by utilizing libraries including pylint, rope, pydoc, pyflakes, pep8, and mccabe for features like static analysis, refactoring, folding, completion, documentation, and more. The plugin contains all you need to develop python applications in Vim. There is no need to install pylint, rope or any other Python libraries on your system.

10. nerdcommenter <https://github.com/scrooloose/nerdcommenter>

11. nerdtree <https://github.com/scrooloose/nerdtree>

12. python-syntax <https://github.com/hdima/python-syntax>

13. syntastic <https://github.com/scrooloose/syntastic>

14. tagbar <https://github.com/majutsushi/tagbar>

15. vim-airline <https://github.com/bling/vim-airline>

16. vim-surround <https://github.com/tpope/vim-surround>

17. YouCompleteMe <https://github.com/Valloric/YouCompleteMe>

18. rust.vim <https://github.com/rust-lang/rust.vim>

    Vim configuration for Rust which provides Rust file detection, syntax highlighting, formatting, Syntastic integration, and more.


Some Useful Tips
----------------

- `Shortcuts` Run current Python code (Provided by python-mode)

        <leader> + r
        \+r

- `Shortcuts` Go to Definition (Provided by python-mode)

        Ctrl+c+g

- `Key Mapping` Press `jk` to exit from insert mode:

        :imap jk <Esc>

- `Key mapping` Press `<F5>` to run Python script

        map <F5> :w<cr>:!python %<cr>

- `Key mapping` F5编译和运行C程序，F6编译和运行C++程序

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

