Work in progress...

For Mac OS X
#### Homebrew
```
brew install phinze/cask/brew-cask fish vim --with-lua
brew cask install iterm2 moom
npm install -g jscs jshint jsonlint grunt-cli
```
#### Symlinks
```
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -si ~/dotfiles/fish/config.fish ~/.config/fish/config.fish
ln -s ~/dotfiles/fish/functions/* ~/.config/fish/functions/
ln -s ~/dotfiles/Sublime\ Text\ 3/Package\ Control.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Package\ Control.sublime-settings
ln -s ~/dotfiles/Sublime\ Text\ 3/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings
```
##### Vundle
```
mkdir -p ~/.vim/bundle/vundle
ln -s ~/dotfiles/submodules/vundle/* ~/.vim/bundle/vundle/
```
When in fish must run this function to install\update Vundle's
```
updatevim
```
Worth it to submodule over straight git clone? Can update all modules at once this way.
##### iTerm2
Open `Preferences` and on the `General` tab check `Load preferences from a custom folder or URL` and select the 
`com.googlecode.iterm2.plist`.
##### oh-my-fish
```
mkdir ~/.oh-my-fish
ln -s ~/dotfiles/submodules/.oh-my-fish/* ~/.oh-my-fish
```
#### Goals
[KISS](http://en.wikipedia.org/wiki/KISS_principle)
#### TODO
- reuseable gitconfig
- Use gulp! Comfirm symlink actions? or other prompt
- Script symlinking
- ~~Script Homebrew installs~~ [brewfile](http://robots.thoughtbot.com/brewfile-a-gemfile-but-for-homebrew)
- .cask file?
- [EditorConfig?](http://editorconfig.org/)
- ~~Fork [Mathia's dotfiles](http://mths.be/dotfiles) instead? [a partial walkthrough](http://code.tutsplus.com/tutorials/setting-up-a-mac-dev-machine-from-zero-to-hero-with-dotfiles--net-35449). Nah.. js based? [Eduardo's](https://github.com/eduardolundgren/dotfiles)~~


### Arch linux notes
- Install powerline font (pacman -S --needed base-devel, yaourt install)
- pacman -S gvim (for python, lua, and clipboard)
- fish functions/ folder didn't exist
- Why are the theme colors funky?
