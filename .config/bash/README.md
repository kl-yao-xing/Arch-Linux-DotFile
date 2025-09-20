#### bashrc
##### 为何bashrc会在这里？
##### 在Arch上通过在/etc/bash.bashrc底部添加以下内容即可。（默认的bashrc位于当前用户的家目录下。～/.bashrc）
# check user bashrc
[ -f "$HOME/.config/bash/bashrc" ] && . "$HOME/.config/bash/bashrc"
##### 具体原理可见[Arch wiki](https://wiki.archlinuxcn.org/wiki/Bash#%E9%85%8D%E7%BD%AE%E6%96%87%E4%BB%B6)。
##### 关于什么是[命令行解释器](https://wiki.archlinuxcn.org/wiki/%E5%91%BD%E4%BB%A4%E8%A1%8C%E8%A7%A3%E9%87%8A%E5%99%A8)（shell）（在arch上默认是bash）。