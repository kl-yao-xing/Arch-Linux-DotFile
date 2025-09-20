#!/bin/bash
#
# ~/.config/bash/profile.sh
# 
# some envs

# envs
export EDITOR=nvim
export LANG=zh_CN.UTF-8

# settings
# bash
## history file
export HISTFILE="$HOME/.cache/bash/bash_history"
## history ignore
export HISTIGNORE=exit:poweroff:river
export HISTCONTROL=ignoredups

# fcitx5
export XMODIFIERS=@im=fcitx 

# less
## history file
export LESSHISTFILE="$HOME/.cache/less/lesshst"

# XDG_FILES
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
