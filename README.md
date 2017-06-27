My Neovim setup
===============

My Neovim IDE setup for Python, Go, Rust, HTML, CSS, Javascript, Typescript,
gettext and more.

Features
---------

* `init.vim` handling
* Incremental and smart case search.
* Sublime Text style multiple selections
* Trailing whitespace highlighting and cleaning shortcut
* Logical and Visual layout (for Right-To-Left lanaguegs) editing.
* Tabs expand to 4 spaces by default
* Remap `<Leader>` to `<SPACE>` and `jj` to `<ESC>`
* Highlight current row and color column 80
* 70+ language packs support
* Syntax checking
* Snippets
* Quotes, parens etc pair, surround
* Extended pair matching with %
* ASCII drawing
* Fuzzy file, buffer, mru, tag, etc finder
* VCS plugins (Fugitive, Lawrencium)
* Tab completion
* Commenting

Prerequisites
-------------

- Neovim and Neovim Python client.
- For faster search, [ripgrep](https://github.com/BurntSushi/ripgrep)
- For tags: [ctags](http://ctags.sourceforge.net)
- For devicons, a patched font, like the one from
  [nerd-fonts](https://github.com/ryanoasis/nerd-fonts)

Usage
------------

The following commands will clone the repo, and install `vim-plug` plugin
manager:

    mkdir -p ~/.config/nvim
    git clone https://github.com/MeirKriheli/dotneovim.git ~/.config/nvim
    curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


Install plugins from the command line:

    nvim +PlugUpdate +qa

Go tags
----------

For CtrlPBufTag search in go files, make sure you have an updated version
of ``ctags`` (>=5.8) and put in your ``~/.ctags``::

    --langdef=Go
    --langmap=Go:.go
    --regex-Go=/func([ \t]+\([^)]+\))?[ \t]+([a-zA-Z0-9_]+)/\2/f,func/
    --regex-Go=/var[ \t]+([a-zA-Z_][a-zA-Z0-9_]+)/\1/v,var/
    --regex-Go=/type[ \t]+([a-zA-Z_][a-zA-Z0-9_]+)/\1/t,type/

Overrides
----------------

* `~/.config/nvim/before.vim`, if exists, is sourced before everything allowing
  definitions of variables to act upon.
* `~/.config/nvim/after.vim` if exists, is sourced after all the files in
  `~/.config/nvim/rc.d` allowing override of default settings (e.g: color
  schemes, plugin configuration, etc.).

Shortcuts and re-Mappings
----------------------------

| Key                    | Command                                                           |
| ---------------------- | ----------------------------------------------------------------- |
| ``jj``                 | ``<Esc>`` in insert and command modes                             |
| ``<SPACE>``            | ``<Leader>``                                                      |
| ``<Leader>v``          | Load `.vimrc`                                                     |
| ``<Leader>V``          | Activate changes to `.vimrc` (Make sure to save it before)        |
| ``<F2>``               | Close current split (window)                                      |
| ``<F3>``               | Toggle NERD tree                                                  |
| ``<F5>``               | Toggle Tagbar                                                     |
| ``<Leader>S``          | Remove trailing whitespace                                        |
| ``<CTRL>hjkl``         | Window movement commands                                          |
| ``<CTRL>arrow``        | Window movement commands                                          |
| ``<Leader>d``          | Delete buffer, keep the split                                     |
| ``-``, ``+``           | Resize horizontal splits                                          |
| ``<ALT><`` ``<ALT>>``  | Resize vertical splits                                            |
| ``<F9>``               |  Toggle logical (RTL, e.g: Hebrew) editing                        |
| ``<F8>``               | Toggle visual (RTL, e.g: Hebrew) editing                          |
| ``g/``                 | :grep!<Space>                                                     |
| ``g*``                 | :grep! -w current_word                                            |
| ``ga``                 | :grepadd! (add results to the current search)                     |
| ``gr``                 | :CtrlPBufTag (fuzzy tag search in current file)                   |
