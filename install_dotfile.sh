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
