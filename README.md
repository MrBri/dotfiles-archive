Work in progress...

For Mac OS X
#### Homebrew
```
brew install phinze/cask/brew-cask fish vim --with-lua
brew cask install iterm2 spectacle
```
Which window manager to install? spectacle or moom?
#### Symlinks
```
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist
ln -s ~/dotfiles/fish/config.fish ~/.config/fish/config.fish
ln -s ~/dotfiles/Sublime\ Text\ 3/Package\ Control.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Package\ Control.sublime-settings
ln -s ~/dotfiles/Sublime\ Text\ 3/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings
```
Currently must run this function in fish to install/update Vim Vundle's
```
ln -s ~/dotfiles/fish/functions/updatevim.fish ~/.config/fish/functions/updatevim.fish
```
#### Goals
[KISS](http://en.wikipedia.org/wiki/KISS_principle)
#### TODO
- Script symlinking
- Script Homebrew install
- ~~Script Homebrew installs~~ [brewfile](http://robots.thoughtbot.com/brewfile-a-gemfile-but-for-homebrew)
- .cask file?
- [EditorConfig?](http://editorconfig.org/)
- Fork [Mathia's dotfiles](http://mths.be/dotfiles) instead? [a partial walkthrough](http://code.tutsplus.com/tutorials/setting-up-a-mac-dev-machine-from-zero-to-hero-with-dotfiles--net-35449)
- Arch Linux version?
