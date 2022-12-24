# If Ubuntu
sudo apt update
sudo apt install -y zsh
sudo apt install -y tmux
sudo apt install autojump
sudo apt install silversearcher-ag
# End Ubuntu

# If Mac
#brew install autojump
# End Mac

curl -L http://install.ohmyz.sh | sh

mv ~/.zshrc ~/.zshrc.bk
mv ~/.vimrc ~/.vimrc.bk
ln -s $(pwd)/.zshrc /home/$USER/.zshrc
ln -s $(pwd)/.vimrc /home/$USER/.vimrc
ln -s $(pwd)/.tmux.conf /home/$USER/.tmux.conf

git clone https://github.com/scmbreeze/scm_breeze.git ~/.scm_breeze
~/.scm_breeze/install.sh
source "${ZDOTDIR:-$HOME}/.zshrc"
