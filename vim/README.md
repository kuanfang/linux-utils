### Configure Vim ###
1. Copy the .vimrc and .vim files to the home directory:
```
cp .vimrc ~
cp -r .vim ~
```

2. Install VundleVim (see [instructions](https://github.com/VundleVim/Vundle.vim#quick-start)):
```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

3. Install and update the configured plugins within vim:
```
:PluginInstall
:PluginUpdate
```

4. (Optinal) Install [solarized colorscheme](https://github.com/altercation/vim-colors-solarized) for Vim:
```
git clone git@github.com:altercation/vim-colors-solarized.git
cd vim-colors-solarized/colors
mv solarized.vim ~/.vim/colors/
```
