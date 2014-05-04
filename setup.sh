apt-get update
apt-get install -y zsh

curl -L http://install.ohmyz.sh | sh

mv ~/.zshrc ~/.zshrc.bk
mv ~/.vimrc ~/.vimrc.bk
ln -s .zshrc ~/.zshrc
ln -s .vimrc ~/.vimrc
