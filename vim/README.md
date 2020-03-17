### Configure Vim ###
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

4. Install [flake8](https://github.com/SublimeLinter/SublimeLinter-flake8) as the Python coding style checker:
```
# For python2
sudo pip install flake8

# For python 3
sudo pip3 install flake8
```

5. Install [Solarized Colorscheme](https://github.com/aruhier/gnome-terminal-colors-solarized):
```
sudo apt-get install dconf-cli
git clone https://github.com/aruhier/gnome-terminal-colors-solarized.git
cd gnome-terminal-colors-solarized
./install.sh
```

6. Install [Solarized Colorscheme for Vim](https://github.com/aruhier/gnome-terminal-colors-solarized):
```
git clone git@github.com:altercation/vim-colors-solarized.git
cp vim-colors-solarized/colors/solarized.vim ~/.vim/colors/
```

7. (Optinal) If the clipboard is not working well, try install vim-gtk:
```
sudo apt-get install vim-gtk
```
