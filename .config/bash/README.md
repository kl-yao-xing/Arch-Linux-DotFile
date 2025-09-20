#### bashrc
<details>
<summary>##### 为何bashrc会在这里？（默认的bashrc位于当前用户的家目录下。即"~/.bashrc"）</summary>
##### 因为bash会检测"~/.bashrc"，但是不会在删除后自动创建。
##### 所以我们只需要在bash全局的脚本中提前检测当前用户是否有自定义的bashrc位于"$HOME/.config/bash/bashrc"。如果有就进行[source](https://man.archlinux.org/man/extra/tcl/source.n.en)
##### 在Arch上通过在/etc/bash.bashrc底部添加以下内容即可。
```shell
# check user bashrc
[ -f "$HOME/.config/bash/bashrc" ] && . "$HOME/.config/bash/bashrc"
```
##### 具体原理可见[Arch wiki](https://wiki.archlinuxcn.org/wiki/Bash#%E9%85%8D%E7%BD%AE%E6%96%87%E4%BB%B6)。
</details>
##### 关于命令行解释器（[shell](https://wiki.archlinuxcn.org/wiki/%E5%91%BD%E4%BB%A4%E8%A1%8C%E8%A7%A3%E9%87%8A%E5%99%A8)），arch上默认使用bash。