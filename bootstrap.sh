#!/usr/bin/env bash
curl -sSL https://get.rvm.io | bash -s stable
gem install rspec
git config --global alias.up '!git remote update -p; git merge --ff-only @{u}'
brew bundle ~/dotfiles/Brewfile
brew bundle ~/dotfiles/Caskfile
