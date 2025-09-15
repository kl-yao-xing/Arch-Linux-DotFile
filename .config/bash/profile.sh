#
# ~/.config/bash/profile.sh
# 
# some envs

# envs
export EDITOR=nvim
export LANG=zh_CN.UTF-8
export LANGUAGE=zh_CN:en_US 

# settings
# bash
## history file
export HISTFILE="$HOME/.cache/bash/bash_history"
## history ignore
export HISTIGNORE=exit:poweroff:river
export HISTCONTROL=ignoredups

# less
## history file
export LESSHISTFILE="$HOME/.cache/less/lesshst"

# XDG_FILES
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_RUNTIME_DIR="/run/usr/1000"