set fish_function_path $fish_function_path "/usr/local/lib/python3.4/site-packages/powerline/bindings/fish"
powerline-setup

# test -s $HOME/.nvm-fish/nvm.fish; and source $HOME/.nvm-fish/nvm.fish
source ~/.config/fish/nvm-wrapper/nvm.fish

. (rbenv init -|psub)


set PATH $HOME/.jenv/bin $PATH
. (jenv init -)
