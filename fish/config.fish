set fish_function_path $fish_function_path "/usr/local/lib/python3.4/site-packages/powerline/bindings/fish"
powerline-setup

. (rbenv init -|psub)

test -s /Users/m467695/.nvm-fish/nvm.fish; and source /Users/m467695/.nvm-fish/nvm.fish

set -xg HOMEBREW_GITHUB_API_TOKEN 596de92cb7b4ec0d0998cd543daf6836eb251fbe

set PATH $HOME/.jenv/bin $PATH
. (jenv init -)
