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


Plugins
------------

* [Solarized](https://github.com/altercation/vim-colors-solarized) - color
  scheme
* [base16-vim](https://github.com/chriskempson/base16-vim) - color scheme
* [vim-molokai](https://github.com/tomasr/molokai) - color scheme
* [Deoplete](https://github.com/Shougo/deoplete.nvim) - Dark powered
  asynchronous completion framework for Neovim 
* [Fugitive](https://github.com/tpope/vim-fugitive) - a Git wrapper so awesome,
  it should be illegal
* [Lawrencium](https://github.com/ludovicchabant/vim-lawrencium) - Mercurial
  wrapper for Vim, inspired by Tim Pope's Fugitive
* [ctrlp.vim](https://github.com/ctrlpvim/ctrlp.vim) - Fuzzy file, buffer, mru,
  tag, etc finder
* [ale](https://github.com/w0rp/ale) - Asynchronous Lint Engine
* [UltiSnips](https://github.com/sirver/ultisnips) - The ultimate snippet
  solution for Vim.
* [vim-snippets](https://github.com/honza/vim-snippets) - vim-snipmate default
  snippets
* [python-mode](https://github.com/klen/python-mode) - Vim python-mode. PyLint,
  Rope, Pydoc, breakpoints from box
* [vim-go](https://github.com/fatih/vim-go) - Go development plugin for Vim
* [rust.vim](https://github.com/rust-lang/rust.vim) - provides Rust file
  detection, syntax highlighting, formatting, Syntastic integration, and more.
* [DrawIt](https://github.com/vim-scripts/DrawIt) - ASCII drawing plugin:
  lines, ellipses, arrows, fills, and more!
* [vim-surround](https://github.com/tpope/vim-surround) -
  quoting/parenthesizing made simple
* [Shebang](https://github.com/vim-scripts/Shebang) - Make executable by
  setting the correct shebang and executable bit
* [Tagbar](http://majutsushi.github.com/tagbar/) - Displays tags in a window,
  ordered by class etc.
* [NERD tree](https://github.com/scrooloose/nerdtree) - A tree explorer
* [nerdtree-git-plugin](https://github.com/Xuyuanp/nerdtree-git-plugin) - A
  plugin of NERDTree showing git status
* [auto-pairs](https://github.com/jiangmiao/auto-pairs) - Insert or delete
  brackets, parens, quotes in pair
* [po.vim](http://vim.sourceforge.net/scripts/script.php?script_id=695) -
  Easier editing of GNU gettext PO files
* [MatchTagAlways](https://github.com/valloric/MatchTagAlways) - A Vim plugin
  that always highlights the enclosing html/xml tags
* [vim-airline](https://github.com/bling/vim-airline) - Light weight status
  line utility
* [tabular](https://github.com/godlygeek/tabular) - text filtering and
  alignment
* [tcomment_vim](https://github.com/tomtom/tcomment_vim) - An extensible &
  universal comment vim-plugin that also handles embedded filetypes
* [vim-unimpaired](https://github.com/tpope/vim-unimpaired) - pairs of handy
  bracket mappings
* [vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors) -
  True Sublime Text style multiple selections for Vim
* [splitjoin.vim](https://github.com/AndrewRadev/splitjoin.vim) - A Vim plugin
  that simplifies the transition between multiline and single-line code
* [vim-repeat](https://github.com/tpope/vim-repeat) - enable repeating supported plugin maps with "."
* [tsuquyomi](https://github.com/Quramy/tsuquyomi) - A Vim plugin for TypeScript


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


Virtualenv settings
-------------------

If you're running from virtualenv activated, make sure to point nvim and ale to
correct locations. By default, settings are:

    let g:python3_host_prog = '/usr/bin/python'
    let g:ale_python_flake8_executable = '/usr/bin/flake8'

If needed, override those settings to the locations on your machine.
