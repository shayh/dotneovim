My Neovim setup
===============


Prerequisites
-------------

- Neovim and Neovim Python client.
- For faster search, [ripgrep](https://github.com/BurntSushi/ripgrep)
- For tags: [ctags](http://ctags.sourceforge.net)

Usage
------------

The following commands will clone the repo, symlink ``~/.vimrc`` and update the
bundles:

    mkdir -p ~/.config/nvim
    git clone https://github.com/MeirKriheli/dotneovim.git ~/.config/nvim
    curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


Install plugins from the command line:

    nvim +PlugUpdate +qa

