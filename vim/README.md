### Configure Vim

## Usage

Normal/Visual Mode:
- `Ctrl-h`: View the previous tab.
- `Ctrl-l`: View the next tab.
- `Ctrl-n`: Open the [NerdTree](https://github.com/preservim/nerdtree) explorer.
- `\-c-Space`: Toggle the comment of the current line or multiple lines using [NERD Commenter](https://github.com/preservim/nerdcommenter).
- `:SyntasticToggleMode`: Temporally toggle the automatic check of [Syntastic](https://github.com/vim-syntastic/syntastic). 
- `:FormatCode`: Automatically formatting the code using [vim-codefmt](https://github.com/google/vim-codefmt)

Insert Mode:
- `Ctrl-p`: Finds the previous matching completion for the partially typed word. 
- `Ctrl-n`: Finds the next matching completion for the partially typed word.

## Install

1. Copy the .vimrc and .vim files to the home directory:
```
cp .vimrc ~
cp -r .vim ~
```

2. Install [VundleVim](https://github.com/VundleVim/Vundle.vim#quick-start):
```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

3. Install and update the configured plugins **in vim**:
```
:PluginClean
:PluginUpdate
```

4. Install [Solarized Colorscheme](https://github.com/aruhier/gnome-terminal-colors-solarized):
```
sudo apt-get install dconf-cli
git clone https://github.com/aruhier/gnome-terminal-colors-solarized.git
cd gnome-terminal-colors-solarized
./install.sh
```

5. Install [Solarized Colorscheme for Vim](https://github.com/aruhier/gnome-terminal-colors-solarized):
```
git clone git@github.com:altercation/vim-colors-solarized.git
cp vim-colors-solarized/colors/solarized.vim ~/.vim/colors/
```

6. Install [flake8](https://github.com/SublimeLinter/SublimeLinter-flake8) as the Python coding style checker:
```
# For python2
sudo pip install flake8

# For python 3
sudo pip3 install flake8
```

7. Install [flake8](https://github.com/SublimeLinter/SublimeLinter-flake8) as the Python coding style checker:
```
# For python2
sudo pip install flake8

# For python 3
sudo pip3 install flake8
```

8. (Optinal) If the clipboard is not working well, try install vim-gtk:
```
sudo apt-get install vim-gtk
```
