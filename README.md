概述

    安装环境：Linux, Mac和Cygwin。
    终端软件：会将ctrl+方向键和shift+方向键等组合键发送给宿主机的终端软件。SecureCRT会发送，XShell配置后可以发送。
    功能特点：编辑python/c/c++代码非常好用，遗憾的是没有调试功能，另外XShell需要配置一堆快捷键才能用。

Centos、Redhat、Fedora安装

    yum install ctags cscope wget unzip vim -y && wget https://github.com/langsim/notepad-ken/archive/master.zip -O master.zip && unzip -o master.zip && rm -rf ~/.vim && \cp -rf notepad-ken-master/.vim* ~ ; rm -rf master.zip notepad-ken-master

Debian、Ubuntu安装

    apt-get install ctags cscope wget unzip vim -y && wget https://github.com/langsim/notepad-ken/archive/master.zip -O master.zip && unzip -o master.zip && rm -rf ~/.vim && \cp -rf notepad-ken-master/.vim* ~ ; rm -rf master.zip notepad-ken-master

使用方法

    在项目的根目录打开vim，按F2打开目录树，按ctrl-left将光标移动到目录树，C/C++项目第一次打开时需要按F5更新索引。

快捷键

    F2 打开IDE模式
    F4 粘贴模式
    F5 在C/C++中可以更新索引
    F6 显示隐藏字符
    F7 跳转到变量或函数定义
    F8 搜索变量或函数
    F9 保存
    F10 退出
    F11 根据语义自动补全
    F12 进入命令模式

    ctrl-r 在当前文件里搜索
    ctrl-t 在当前目录及子目录搜索
    ctrl-y 重做
    ctrl-a 全选
    ctrl-z 撤销
    ctrl-x 剪切
    ctrl-c 复制
    ctrl-v 粘贴
    ctrl-, 注释选中代码
    ctrl-. 反注释选中代码
    ctrl-方向键 将光标移动到其他窗口
    shift-方向键 选择文本
    :%s /patten1/patten2/g 替换

Q&A

    项目诞生缘由
        减少读写代码所需的大脑思维量、手指运动量和CPU占用率
    开发主题
        简单即美
    快捷键对应的按键序列
        ctrl-up \033[1;5A ^[[1;5A
        ctrl-down \033[1;5B ^[[1;5B
        ctrl-left \033[1;5C ^[[1;5C
        ctrl-right \033[1;5D ^[[1;5D
        ctrl-home \033[1;5H ^[[1;5H    
        ctrl-end \033[1;5F ^[[1;5F
        shift-home \033[1;2H
        shift-end \033[1;2F
        shift-pageup \033[5;2~
        shift-pagedown \033[6;2~
        shift-left \033[1;2D
        shift-right \033[1;2C
        shift-up \033[1;2A
        shift-down \033[1;2B
    XShell配置按键序列的位置
        工具-选项-键盘鼠标-按键对应-编辑

Summary

    Install Environment：Linux, Mac and Cygwin。
    Terminal Software：terminal which send ctrl-arrow and shift-arrow to host machine. SecureCRT send, XShell send after config.
    Feature: It's nice to edit python/c/c++ code, pities are lack of debug function and need of configuration for XShell.

Centos、Redhat、Fedora Install

    yum install ctags cscope wget unzip vim -y && wget https://github.com/langsim/notepad-ken/archive/master.zip -O master.zip && unzip -o master.zip && rm -rf ~/.vim && \cp -rf notepad-ken-master/.vim* ~ ; rm -rf master.zip notepad-ken-master

Debian、Ubuntu Install

    apt-get install ctags cscope wget unzip vim -y && wget https://github.com/langsim/notepad-ken/archive/master.zip -O master.zip && unzip -o master.zip && rm -rf ~/.vim && \cp -rf notepad-ken-master/.vim* ~ ; rm -rf master.zip notepad-ken-master

Operating Instruction

    Open vim in project root dir，press F2 and ctrl-left to use file tree. Press F5 to update index when open C/C++ project first time.

Function Key

    F2 open IDE mode
    F4 paste mode
    F5 In C/C++ update index
    F6 display the hidden character
    F7 jump to variable or function defination
    F8 search variable or function defination
    F9 save
    F10 quit

    ctrl-r search in current file
    ctrl-t search in current folder and child folder
    ctrl-y redo
    ctrl-a select all
    ctrl-z undo
    ctrl-x cut
    ctrl-c copy
    ctrl-v paste
    ctrl-, comment selected code
    ctrl-. uncomment selected code
    ctrl-arrow jump to other window
    shift-arrow select text
    :%s /patten1/patten2/g replace

some teminal need to config

    ctrl-up \033[1;5A ^[[1;5A
    ctrl-down \033[1;5B ^[[1;5B
    ctrl-left \033[1;5C ^[[1;5C
    ctrl-right \033[1;5D ^[[1;5D
    ctrl-home \033[1;5H ^[[1;5H    
    ctrl-end \033[1;5F ^[[1;5F

Q&A

    Target
        Consuming less brain, less finger and less cpu to read and write code
    Theme
        Pretty is simple
    key bind
        ctrl-up \033[1;5A ^[[1;5A
        ctrl-down \033[1;5B ^[[1;5B
        ctrl-left \033[1;5C ^[[1;5C
        ctrl-right \033[1;5D ^[[1;5D
        ctrl-home \033[1;5H ^[[1;5H    
        ctrl-end \033[1;5F ^[[1;5F
        shift-home \033[1;2H
        shift-end \033[1;2F
        shift-pageup \033[5;2~
        shift-pagedown \033[6;2~
        shift-left \033[1;2D
        shift-right \033[1;2C
        shift-up \033[1;2A
        shift-down \033[1;2B
    XShell config position:
        tool - configuration - keyborad and mourse - key bind - edit
