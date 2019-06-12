if [[ $UID != 0 ]]; then
    echo "Please run this script with sudo:"
    echo "sudo $0 $*"
    exit 1
fi

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null 2> /dev/null
brew install node
brew install cask
brew cask install google-chrome
brew cask install github-desktop
brew cask install vscode
brew cask install atom
brew cask install iterm
brew cask install slack
brew cask install docker
brew cask install spectacle
sudo defaults write /Library/Preferences/.GlobalPreferences.plist _HIEnableThemeSwitchHotKey -bool true
sudo shutdown -r
