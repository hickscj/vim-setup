Working out my own vim configuration with a little help from [vimcasts.org](http://vimcasts.org). Consider this your warning that I am a vim novice and am refining this setup to suit my own devices.

Some of this is from [Amir Salihefendic's](https://github.com/amix) ultimate Vim configuration, but it is significantly simplified.

This setup uses the symbolic linking recommended in [Drew Neil's dotvim](https://github.com/nelstrom/dotvim).

Create symlinks:

    ln -s ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/gvimrc ~/.gvimrc

Switch to the `~/.vim` directory, and fetch submodules:

    cd ~/.vim
    git submodule init
    git submodule update
