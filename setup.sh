apt-get update
apt-get install -y zsh
apt-get install -y tmux 

curl -L http://install.ohmyz.sh | sh

mv ~/.zshrc ~/.zshrc.bk
mv ~/.vimrc ~/.vimrc.bk
ln -s .zshrc ~/.zshrc
ln -s .vimrc ~/.vimrc
ln -s .tmux.conf ~/.tmux.conf
