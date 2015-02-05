Opinions:
- best Unix shell: [Fish](fishshell.com)
- best browser: Google Chrome
- best commandline/default editor: vim
- best editor: Sublime Text 3 with Vintageous
- best editor/text theme: [Solarized dark](http://ethanschoonover.com/solarized)
- best text expand for mac: [aText](https://www.trankynam.com/atext/)

For Mac OS X
#### Homebrew
```
brew install the_silver_searcher fish vim --with-lua
brew install rbenv --HEAD
```
#### Symlinks
```
ln -s ~/dotfiles/.gitconfig ~/
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -si ~/dotfiles/fish/config.fish ~/.config/fish/config.fish
mkdir ~/.config/fish/functions
ln -s ~/dotfiles/fish/functions/* ~/.config/fish/functions/
ln -s ~/dotfiles/Sublime\ Text\ 3/Package\ Control.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Package\ Control.sublime-settings
ln -s ~/dotfiles/Sublime\ Text\ 3/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings
```
##### aText
```
open ~/dotfiles/aText/Data.atext
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
##### iTerm2
Open `Preferences` and on the `General` tab check `Load preferences from a custom folder or URL` and select the 
`com.googlecode.iterm2.plist`.
##### Alfred
Alfred 2 requires setting the `Set sync folder...` under the `Advanced` tab of `Preferences`.

#### Mac preferences
Disable dashboard:
```
defaults write com.apple.dashboard mcx-disabled -boolean YES
killall Dock
```
#### Goals
[KISS](http://en.wikipedia.org/wiki/KISS_principle)
#### TODO
- Use gulp! Comfirm symlink actions? or other prompt
- Script symlinking
- ~~Script Homebrew installs~~ [brewfile](http://robots.thoughtbot.com/brewfile-a-gemfile-but-for-homebrew)
- .cask file?
- ~~Fork [Mathia's dotfiles](http://mths.be/dotfiles) instead? [a partial walkthrough](http://code.tutsplus.com/tutorials/setting-up-a-mac-dev-machine-from-zero-to-hero-with-dotfiles--net-35449). Nah.. js based? [Eduardo's](https://github.com/eduardolundgren/dotfiles)~~


### Arch linux notes
- Install powerline font (pacman -S --needed base-devel, yaourt install)
- pacman -S gvim (for python, lua, and clipboard)
- fish functions/ folder didn't exist
- Why are the theme colors funky?
