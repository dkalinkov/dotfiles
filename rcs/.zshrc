# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/dekay/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

plugins=( git )

source $ZSH/oh-my-zsh.sh

# User configuration

eval `dircolors ~/repos/dircolors-solarized/dircolors.256dark`

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# aliases
alias ll="ls -alF"
