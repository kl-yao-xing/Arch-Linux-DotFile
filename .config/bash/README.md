#### bashrc
##### 简单来说，这是bash的配置文件，存放一系列由你自定义的配置内容。
##### 为何bashrc会在这里？（默认的bashrc位于当前用户的家目录下。即"~/.bashrc")
##### 因为bash会检测"~/.bashrc"，但是不会在删除后自动创建。
##### 所以我们只需要在bash全局的脚本中提前检测当前用户是否有自定义的bashrc位于"$HOME/.config/bash/bashrc"。如果有就进行[source](https://man.archlinux.org/man/extra/tcl/source.n.en)
##### 在Arch上通过在/etc/bash.bashrc底部添加以下内容即可。
```shell
# check user bashrc
[ -f "$HOME/.config/bash/bashrc" ] && . "$HOME/.config/bash/bashrc"
```
##### 具体原理可见[Arch wiki bash](https://wiki.archlinuxcn.org/wiki/Bash#%E9%85%8D%E7%BD%AE%E6%96%87%E4%BB%B6) | [Arch man bash](https://man.archlinux.org/man/bash.1.en)。
##### 关于命令行解释器（[shell](https://wiki.archlinuxcn.org/wiki/%E5%91%BD%E4%BB%A4%E8%A1%8C%E8%A7%A3%E9%87%8A%E5%99%A8)），arch上默认使用bash。
##### 为了便于管理，我将一些本应直接写在bashrc内的配置分类成了不同的文件，在bashrc中只留有检测并source的命令。
#### alias.sh
##### 这里是我的一些shell命令别名。
```shell
alias shell命令='解释成的shell命令'
```
##### 举个例子，[ls](https://man.archlinux.org/man/ls.1.en)是一个用来列出当前所在目录的文件（夹）的命令。
##### 使用ls -a可以列出当前所在目录的所有文件（夹）（默认不会列出以.开头的隐藏文件）
##### 使用ls --color=auto可以让不同后缀的文件（夹）自动以不同的颜色显示。
##### 我的习惯是每次都启用-a 和 --color=auto这两个选项，但是每次都要输入很麻烦。那我只需要添加
```shell
alias ls='ls -a --color=auto'
```
##### 这样我就不需要每次使用ls时都输入ls -a --color=auto，而是只需输入ls即可。
#### profile.sh
##### 这里主要是一些环境变量。
```shell
export 变量名=变量内容
```
##### 举个例子
```shell
# bash
## history file
export HISTFILE="$HOME/.cache/bash/bash_history"
## history ignore
export HISTIGNORE=exit:poweroff:river
export HISTCONTROL=ignoredups
```
##### 这一段的作用是配置我的[bash历史记录](https://man.archlinux.org/man/bash.1.en#HISTCONTROL)。
##### HISTFILE 定义了basha将会把历史记录文件放在哪里。
##### HISTIGNORE 定义了bash会忽略那些命令（不计入历史记录），使用:分隔。
##### HISTCONTROL = ignoredups 会是bash忽略连续的重复命令（不计入历史记录）。