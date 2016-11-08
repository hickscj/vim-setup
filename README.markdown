Working out my own vim configuration with a little help from [vimcasts.org](http://vimcasts.org) and some others:

Some of this is from [Amir Salihefendic's](https://github.com/amix) ultimate Vim configuration, but it is significantly simplified.

You can use the symbolic linking recommended in [Drew Neil's dotvim](https://github.com/nelstrom/dotvim).
Or just add a dot to the front of gvimrc and vimrc and copy the bundle directory into your .vim folder.

Create symlinks:

    ln -s ~/vim-setup/vimrc ~/.vimrc
    ln -s ~/vim-setup/gvimrc ~/.gvimrc

Install plugins with Vundle:

    `:PluginInstall`   
