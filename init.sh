# brew & cask
# https://note.com/digiangler777/n/n8206e2163904
xcode-select --install
# xcode-select --version
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# brew -v
brew install cask


# iterm2
# https://note.com/digiangler777/n/n8206e2163904
brew cask install iterm2


# fish
# https://qiita.com/wadaaaan/items/723a9a40925d4a97808a
brew install fish
echo /usr/local/bin/fish | sudo tee -a /etc/shells
chsh -s /usr/local/bin/fish
curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish
fisher add oh-my-fish/theme-bobthefish
git clone https://github.com/powerline/fonts.git
cd fonts
./install.sh


# shiftit
# https://github.com/fikovnik/ShiftIt/releases


# alfred
# https://www.alfredapp.com/


# deepL
# https://www.deepl.com/en/app/