#!/bin/sh

# HomeBrew
echo "Installing brew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Formulae
echo "Installing Formulae from Homebrew"
brew install git
brew install amazon-ecs-cli
brew install maven 

# Casks
echo "Installing Casks from Homebrew"
brew cask install slack
brew cask install zoom
brew cask install visual-studio-code
brew cask install adobe-creative-cloud
brew cask install jetbrains-toolbox
brew cask install kitematic
brew cask install google-chrome
brew cask install dropbox
brew cask install postman
brew cask install docker
brew cask install intellij-idea
brew cask install datagrip
brew cask install spectacle
brew cask install iTerm2
brew cask install sensiblesidebuttons

# vim
echo "Setting up vim"
touch ~/.vimrc
cat ./vimrc > ~/.vimrc

# git config
echo "Creating sane global git configs"
# ```git branch``` command displays branches in terminal instead of editor. 
git config --global pager.branch false
# sets the default editor to VS Code instead of vim.
git config --global core.editor code -w
# make git diff print to stdout instead of pulling up vim.
git config pager.diff false 

# oh-my-zsh --unattended (otherwise script will exit immediately after install)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# nvm
echo "Installing nvm"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash