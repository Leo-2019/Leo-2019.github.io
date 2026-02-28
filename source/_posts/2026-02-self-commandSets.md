---
title: Linux 个人命令库构建
date: 2026-02-28 20:30:26
categories:
  - 技术
tags:
  - 工作习惯
sticky: 9998
---
<img class="img-center" align="center" src="https://leo-2019-blog-1259040785.cos.ap-beijing.myqcloud.com/Image/20260228225602679.jpg" width="70%" alt="按宽度比例缩放">

<blockquote class="blockquote-center">
Linux 下，我们通过 shell 命令完成大部分工作，那么是否也可以构建自己的命令 快捷的完成某些我们日常经常要做的一些事情呢？与之前的这篇文章的实现方法类似 <a href="/2025/11/10/Window_quick_start/">Windows 个人快捷启动系统构建</a>，方法是在 Linux 系统下编写 shell 脚本，生成软链接并命令指令，将其放在系统路径下，实现命令可执行配置。具体脚本的编写在 AI 横行的当下并不是难事，重要的是如何构建个人命令系统。下面给我的具体方法。
</blockquote>

<!-- more -->

## 一、最终效果

<img class="img-center" align="center" src="https://leo-2019-blog-1259040785.cos.ap-beijing.myqcloud.com/Image/20260228212010397.png" width="60%" alt="按宽度比例缩放">


* "?" 指令是个人命令集总览。

* "LeoSsv" 指令是其中一个自定义指令，当执行指令时会给出命令提示信息。

* "LeoLoadLog" 指令是其中另一个命令，因为比较简单只做一件固定的事，所以没有帮助信息，直接交互式执行。

## 二、实现方法

1. 创建项目路径 🔜 存放所有个人命令集文件，相当于工程目录
2. 创建系统路径 🔜 用于设置命令名称并使其全局可执行
3. 创建命令总览文件及其脚本
4. 添加脚本软连接到系统路径并重命名
5. 添加说明信息

### ⏩ 创建项目路径

任意创建一个路径，把其当作个人命令集的项目目录。在里面存放所需的各种文件，主要包括 脚本文件，说明文件，文本文件等。

图片 ls 

### ⏩ 创建系统路径
1. 选定一个路径
一般来说项目级的环境路径 一般指定为： .../projects/myproject/bin
我这里为了方便暂时用的是常用的系统路径 /home/user/bin

图片  ls /home/user/bin

2. 添加路径为环境变量
```
# 1. 创建个人命令目录
mkdir -p ~/bin

# 2. 添加到 PATH（写入 ~/.bashrc 或 ~/.zshrc）
echo 'export PATH="$HOME/bin:$PATH"' >> ~/.bashrc

# 3. 使配置生效
source ~/.bashrc

# 4. 验证
echo $PATH
which 你的命令

```
### ⏩ 创建命令总览文件及其脚本
为了便于管理和使用，创建 readme 文件描述基本信息 并显示在终端 便于使用者查看。


---
