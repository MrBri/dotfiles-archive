set fish_function_path $fish_function_path "/usr/local/lib/python3.4/site-packages/powerline/bindings/fish"
powerline-setup

. (rbenv init -|psub)

test -s $HOME/.nvm-fish/nvm.fish; and source $HOME/.nvm-fish/nvm.fish

set PATH $HOME/.jenv/bin $PATH
. (jenv init -)
