Work in progress...

#### Symlinks
```
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist
ln -s ~/dotfiles/fish/config.fish ~/.config/fish/config.fish
```
Currently must run this function in fish to install/update Vim Vundle's
```
ln -s ~/dotfiles/fish/functions/updatevim.fish ~/.config/fish/functions/updatevim.fish
```

#### Homebrew
```
brew install phinze/cask/brew-cask fish vim --with-lua
brew cask install iterm2
```

#### Goals
[KISS](http://en.wikipedia.org/wiki/KISS_principle)

#### TODO
- Script symlinking
- Script Homebrew install
- Script Homebrew installs