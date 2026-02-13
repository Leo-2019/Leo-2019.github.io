---
title: Windows 一键召唤🎃：给应用文件 “起名”
date: 2025-11-10 00:00:16
categories:
  - 技术
tags:
  - 工作习惯
sticky: 9999
---
<img class="img-center" align="center" src="https://leo-2019-blog-1259040785.cos.ap-beijing.myqcloud.com/Image/20251115205846524.jpg" width="70%" alt="按宽度比例缩放">

<blockquote class="blockquote-center">
用 Windows 办公时，你大概率遇到过这种糟心场景：正顺着思路深耕某个问题，突然需要调取一份旧文档佐证想法。可这份文件久未打开，早已忘了藏在哪个层层嵌套的文件夹里，只能鼠标点来点去逐个排查，对着一堆似曾相识的文件名反复确认。等费了半天劲找到并打开，当初要查的核心信息、那灵光一闪的灵感，早就没了踪影。
难道 “找东西” 的时间，只能白白浪费？当然不！能不能给常用的应用、文档、网页都起个好记的 “专属名字”，需要时直接 “呼唤” 名字就能一键打开？经过大量调研、测试和总结，我整理出一套实操方法论，不管是可执行程序、常用文档，还是高频网页，都能实现 “起名 + 召唤” 的高效操作，彻底告别无效查找。
</blockquote>

<!-- more -->

## 一、最终效果

通过在win+R中输入特定命令(名字)可以打开特定的应用程序、文件夹、文件、网址、系统面板。

eg:

| ![image001.png](https://leo-2019-blog-1259040785.cos.ap-beijing.myqcloud.com/Image/image001.png) | 👉 | ![image002.png](https://leo-2019-blog-1259040785.cos.ap-beijing.myqcloud.com/Image/image002.png) |
| :-------------------------: | :-: | :-------------------------: |
| ![image003.png](https://leo-2019-blog-1259040785.cos.ap-beijing.myqcloud.com/Image/image003.png) | 👉 | ![image004.png](https://leo-2019-blog-1259040785.cos.ap-beijing.myqcloud.com/Image/image004.png) |
| ![image005.png](https://leo-2019-blog-1259040785.cos.ap-beijing.myqcloud.com/Image/image005.png) | 👉 | ![image006.png](https://leo-2019-blog-1259040785.cos.ap-beijing.myqcloud.com/Image/image006.png) |
| ![image007.png](https://leo-2019-blog-1259040785.cos.ap-beijing.myqcloud.com/Image/image007.png) | 👉 | ![image008.png](https://leo-2019-blog-1259040785.cos.ap-beijing.myqcloud.com/Image/image008.png) |
| ![image009.png](https://leo-2019-blog-1259040785.cos.ap-beijing.myqcloud.com/Image/image009.png) | 👉 | ![image010.png](https://leo-2019-blog-1259040785.cos.ap-beijing.myqcloud.com/Image/image010.png) |


## 二、原理：

将快捷方式放入系统环境变量路径下，通过Win+R输入命令打开APP、文件、文件夹或网页。

## 三、配置：

### 1.文件、应用程序

1.在桌面上**创建一个文件夹**winr；

<img class="img-center" align="center" src="https://leo-2019-blog-1259040785.cos.ap-beijing.myqcloud.com/Image/image011.png" width="50%" alt="按宽度比例缩放">

2.将需要快捷打开的文件、文件夹、应用程序**创建桌面快捷方式，并移入此文件夹**；
3.**更改快捷方式名称**，更改后的名字就是后续在win+r命令框中应该输入的命令。

<img class="img-center" align="center" src="https://leo-2019-blog-1259040785.cos.ap-beijing.myqcloud.com/Image/image012.png" width="50%" alt="按宽度比例缩放">

4.将文件夹放在某个文件路径下。（路径随意，只要是在本地就行）

<img class="img-center" align="center" src="https://leo-2019-blog-1259040785.cos.ap-beijing.myqcloud.com/Image/image013.png" width="50%" alt="按宽度比例缩放">

5.将文件夹路径添加到系统路径中；

<img class="img-center" align="center" src="https://leo-2019-blog-1259040785.cos.ap-beijing.myqcloud.com/Image/image014.png" width="50%" alt="按宽度比例缩放">

### 2.文件夹

1.访问具体路径的文件夹
直接在win+r打开的启动框内输入绝对路径。

2.访问特殊固定的路径也就是经常打开的文件夹
和文件或APP的快捷访问的配置操作类似。只需把特定文件夹的快捷方式重命名并放入系统路径下（即上文winr文件夹中）。

### 3.网页

1.找到网页的启动程序，创建桌面快捷方式；

![image015.png](https://leo-2019-blog-1259040785.cos.ap-beijing.myqcloud.com/Image/image015.png)


2.修改快捷方式的配置。

<img class="img-center" align="center" src="https://leo-2019-blog-1259040785.cos.ap-beijing.myqcloud.com/Image/image016.png" width="40%" alt="按宽度比例缩放">

<img class="img-center" align="center" src="https://leo-2019-blog-1259040785.cos.ap-beijing.myqcloud.com/Image/image017.png" width="40%" alt="按宽度比例缩放">

3.重命名快捷方式并放入上文提到的“winr”文件夹中。

<img class="img-center" align="center" src="https://leo-2019-blog-1259040785.cos.ap-beijing.myqcloud.com/Image/image018.png" width="100%" alt="按宽度比例缩放">

### 4.系统面板

1.在网上查找对应系统面板的启动程序的名字和位置。（一般都在C:\Windows\System32路径下）如下图所示：

![image019.png](https://leo-2019-blog-1259040785.cos.ap-beijing.myqcloud.com/Image/image019.png)

2.找到对应启动程序右击-->send to-->Desktop(create shortcut)创建桌面快捷方式并重命名。

![image020.png](https://leo-2019-blog-1259040785.cos.ap-beijing.myqcloud.com/Image/image020.png)

3.将此快捷方式移入上文提到的winr文件夹中。

## 四、管理（可选）：
为了方便我们后续的日常使用，忘记指令时，需要对指令进行查询，所以管理自己定义的这些快捷指令是非常有好处的。当然针对每个人有每个人管理的方法，但目的是为了在我们忘记命令时可以快速查找。我的管理方法是通过维护一个包含指令和对应具体动作的TXT文档来更新记录或查询。

1.新建一个name.txt文档,放在上述winr文件夹中。

![image021.png](https://leo-2019-blog-1259040785.cos.ap-beijing.myqcloud.com/Image/image021.png)

2.在文档中添加命令信息。我在文档中说明了如何新加命令，命令的规则，和具体命令的详细信息。
需要说明的是自定义的命令要与windows的系统命令不冲突，我采取的方法是不同类型的命令以不同符号开头。

![image022.png](https://leo-2019-blog-1259040785.cos.ap-beijing.myqcloud.com/Image/image022.png)

我将命令分为四种：文档、文件、app、网页、系统面板 。分别进行记录，其中文件必须注明文件所在的位置，防止后面忘记位置后，只能打开不能进行其他操作的尴尬。以下是我的记录内容，仅供参考。

![image023.png](https://leo-2019-blog-1259040785.cos.ap-beijing.myqcloud.com/Image/image023.png)

3.为了方便管理和调取name.txt文件进行查询和更新，可以在winr文件夹内创建name.txt的快捷方式，并重命名为name。这样以后就可以直接在win+R中输入name命令进行查询和更新。

![image024.png](https://leo-2019-blog-1259040785.cos.ap-beijing.myqcloud.com/Image/image024.png)

4.另外，上述操作中已经将winr文件夹的路径添加到系统路径中了。以后需要看到底有哪些快捷方式和指令时直接win+R输入winr就能打开。

5.为了在电脑中容易辨识出哪些文件夹和文件是可以通过快捷方式启动的，在文件或文件夹的命名时以&或#开头。

![image025.png](https://leo-2019-blog-1259040785.cos.ap-beijing.myqcloud.com/Image/image025.png)

![image026.png](https://leo-2019-blog-1259040785.cos.ap-beijing.myqcloud.com/Image/image026.png)

6.为了桌面看起来干净也可以在某个地方创建一个名为#Desktop的文件夹，平时的临时文档尽量放在这里面。并将其按上文提到的文件夹设置为快捷命令启动方式进行设置。解放桌面。

**维护管理指令的关键是保证winr文件夹下快捷方式的名称和name.txt中的记录保持一致**

## 五、结尾

<div style="text-align: center; margin: 30px 0; padding: 20px; background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%); border-radius: 12px; box-shadow: 0 4px 15px rgba(0,0,0,0.1);">
  <p style="font-size: 18px; font-weight: bold; color: #2c3e50; margin: 0;">经过上面的配置，但凡你想快速打开的各种文件、文件夹、应用程序、网页、系统面板，你都可以通过敲键盘很快打开，十分装逼。这样便可以将桌面的图标全部清除，看起来桌面也很干净，并且也使自己的电脑只能自己使用，其他人用你的电脑不知道自定义命令会一脸懵逼，增加了电脑的安全性。🎉</p>
</div>

<div style="text-align: center; margin: 30px 0; padding: 20px; background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%); border-radius: 12px; box-shadow: 0 4px 15px rgba(0,0,0,0.1);">
  <p style="font-size: 18px; font-weight: bold; color: #2c3e50; margin: 0;">通过我总结的这套方法论，即：快捷方式+系统路径+自定义命令管理表。可以快捷启动任何你能想到的东西。自由度非常高，常见的类型基本都可以，毕竟计算机上的任何东西都是程序嘛，也就是.exe，通过快捷方式这种间接寻址的方式将各种文件统一改名字和管理，其实整个过程就我的理解而言Win+R打开的启动框就是一个启动命令，类似将程序计数器指向某个.exe，而咱们的命令就是告诉计算机你去环境变量的系统路径中找以我这个命令命名的的快捷方式文件，而快捷方式文件就相当于指针的间接寻址，告诉计算机对应的.exe的路径在哪，然后让计算机去这个路径下找对应的程序并运行它。</p>
</div>

