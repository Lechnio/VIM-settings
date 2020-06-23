#!/bin/bash
set e

REQUIRMENTS=(
"vim-gtk3"
"libreadline-dev"
"libncurses5-dev"
"libncursesw5-dev"
"build-essential"
"python3-dev"
"cmake"
"vim"
)

echo -e "Checking requirments for custom vim:\n" "${REQUIRMENTS[*]}"
sudo apt-get install -ym "${REQUIRMENTS[@]}"

sudo rm -rf ~/.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

cp .vimrc ~/
cp .ycm_extra_conf.py ~/.vim/
VIM_VER=$(ls /usr/share/vim/ | grep -E "^vim[0-9]+$")
VIM_VER=${VIM_VER##*[[:space:]]}
sudo cp *.vim /usr/share/vim/$VIM_VER/colors/
vim +PluginInstall +qall
sudo python3 ~/.vim/bundle/YouCompleteMe/install.py --clang-completer # use --all instead to use with all lenguages

echo "Installation success"
