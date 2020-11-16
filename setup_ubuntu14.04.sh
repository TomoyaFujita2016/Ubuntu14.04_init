sudo apt update          
sudo apt install -y software-properties-common 
sudo add-apt-repository -y ppa:jonathonf/vim 
sudo apt update          
#sudo apt upgrade 
sudo apt -y install vim git 
 
# install dein.vim 
printf '\033[31m%s\033[m\n' '[*]Install dein.vim...' 
mkdir -p ~/.cache/dein 
cd ~/.cache/dein 
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh 
sh ./installer.sh ~/.cache/dein 
 
 
# install my confing 
printf '\033[31m%s\033[m\n' '[*]Install config...' 
cd ~ 
mv .bashrc .bashrc.org 
mv .vimrc .vimrc.org 
git clone https://github.com/TomoyaFujita2016/dotFiles.git 
cd ./dotFiles/ 
cp ./bash/.bashrc ~/ 
cp ./vim/.vimrc ~/ 
cp -r ./vim/.vim/ ~/ 
vim +":call dein#install()" +:q 
