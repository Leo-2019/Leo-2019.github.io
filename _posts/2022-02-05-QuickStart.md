---
layout: post
title: Windows快速启动
subtitle: 桌面设置、快速启动
author: Leo
date: 2022-02-5
categories: blog
tags: [computer_set]
---
<p align="center">
<a href="https://github.com/Leo-2019" target="_blank">
 <img src="https://github.com/Leo-2019/Picture/blob/main/pictures/logo/square_mid.jpg?raw=true" width=""/>
</a>
</p>

<p align="center">
  <a href="https://github.com/Leo-2019"><img src="https://img.shields.io/badge/Author-Leo-blue.svg"></a>
  <a href="https://www.ericsson.com"><img src="https://img.shields.io/badge/company-Ericssion-brightgreen.svg"></a>
  <a href="https://internal.ericsson.com/org/31580708?unit=31580708"><img src="https://img.shields.io/badge/Unit-RPCN_SWD_APP4-red.svg"></a>
</p>

<h3 align="center">Readme  written format</h3>

> 1. **介绍**：关于个人电脑配置的分享
> 2. **联系邮箱** ： leo.c.li@ericsson.com 。
> 3. **欢迎指教** ：若文章内容有误，欢迎指出讨论。
> 4. **转载须知** ：以下文章如非文首说明皆为原创，转载请在文首注明出处，请勿恶意抄袭/搬运。让我们一起维护一个良好的技术创作环境！⛽️

<h3 align="center">我的电脑设置</h3>

---

> 👏 好开森，终于有一个自己的博客了！开启并记录自己的职场菜鸟进阶史。嘿嘿，那么要想愉快高效的工作，个人电脑的个性化配置十分重要。下来我将分享以下我对windows系统的个性化配置。

我将以快速启动、命令管理、桌面布置三方面展开。

## 快速启动

本文所谓的快速启动是指通过在windows自带的启动栏中输入**自定义命令**打开特定的应用程序、文件夹、文件、网址、系统面板。由于网上很多网友提供的方法不够系统也不全面，我就止不住的想分享一下我的整一套的方法论喽。自由度非常高！

### 效果

* 快速启动文件

![file](https://github.com/Leo-2019/Leo-2019.github.io/blob/master/_posts/pictures/QuickStart/file.gif?raw=true)

* 快速启动文件夹

![floder](https://github.com/Leo-2019/Leo-2019.github.io/blob/master/_posts/pictures/QuickStart/%23cpp.gif?raw=true)

* 快速启动APP

![app](https://github.com/Leo-2019/Leo-2019.github.io/blob/master/_posts/pictures/QuickStart/App.gif?raw=true)

* 快速启动网页

![@baidu](https://github.com/Leo-2019/Leo-2019.github.io/blob/master/_posts/pictures/QuickStart/@baidu.gif?raw=true)

* 快速启动系统面板

![sys](https://github.com/Leo-2019/Leo-2019.github.io/blob/master/_posts/pictures/QuickStart/sys.gif?raw=true)

### 原理

将快捷方式放入系统环境变量路径下，通过Win+R输入命令打开APP、文件、文件夹或网页等。

### 配置方法

#### 一、文件、应用程序

1. 在桌面上创建一个文件夹winr；

   ![picture](https://github.com/Leo-2019/Leo-2019.github.io/blob/master/_posts/pictures/QuickStart/1.1.png?raw=true)

2. 将需要快捷打开的文件、文件夹、应用程序创建桌面快捷方式，并移入此文件夹；

3. 更改快捷方式名称，更改后的名字就是后续在win+r命令框中应该输入的命令。

   ![picture](https://github.com/Leo-2019/Leo-2019.github.io/blob/master/_posts/pictures/QuickStart/1.3.png?raw=true)

4. 将文件夹放在某个文件路径下。（路径随意，只要是在本地就行）

   ![picture](https://github.com/Leo-2019/Leo-2019.github.io/blob/master/_posts/pictures/QuickStart/1.4.png?raw=true)

5. 将文件夹路径添加到系统路径中；

   ![picture](https://github.com/Leo-2019/Leo-2019.github.io/blob/master/_posts/pictures/QuickStart/1.5.png?raw=true)

#### 二、文件夹

* **访问具体路径的文件夹**：直接在win+r打开的启动框内输入绝对路径。

* **访问特殊固定的路径也就是经常打开的文件夹**：和文件或APP的快捷访问的配置操作类似。只需把特定文件夹的快捷方式重命名并放入系统路径下（即上文winr文件夹中）。

#### 三、网页

1. 找到网页的启动程序，创建桌面快捷方式；

   ![picture](https://github.com/Leo-2019/Leo-2019.github.io/blob/master/_posts/pictures/QuickStart/3.1.png?raw=true)

2. 修改快捷方式的配置。

   ![picture](https://github.com/Leo-2019/Leo-2019.github.io/blob/master/_posts/pictures/QuickStart/3.2.png?raw=true)

   ![picture](https://github.com/Leo-2019/Leo-2019.github.io/blob/master/_posts/pictures/QuickStart/3.22.png?raw=true)

3. 重命名快捷方式并放入上文提到的“winr”文件夹中。

   ![picture](https://github.com/Leo-2019/Leo-2019.github.io/blob/master/_posts/pictures/QuickStart/3.3.png?raw=true)

#### 四、系统面板

1. 在网上查找对应系统面板的启动程序的名字和位置。（一般都在C:\Windows\System32路径下）如下图所示：

   ![picture](https://github.com/Leo-2019/Leo-2019.github.io/blob/master/_posts/pictures/QuickStart/4.1.png?raw=true)

2. 找到对应启动程序右击-->send to-->Desktop(create shortcut)创建桌面快捷方式并重命名。

   ![picture](https://github.com/Leo-2019/Leo-2019.github.io/blob/master/_posts/pictures/QuickStart/4.2.png?raw=true)

3. 将此快捷方式移入上文提到的winr文件夹中。

**【每一次设置后可以Win+R输入命令进行验证】**

## 自定义命令管理

为了方便我们后续的日常使用，忘记指令时，需要对指令进行查询，所以管理自己定义的这些快捷指令是非常有好处的。当然针对每个人有每个人管理的方法，但目的是为了在我们忘记命令时可以快速查找。

我的管理方法是通过维护一个包含指令和对应具体动作的TXT文档来更新记录或查询。

1. 新建一个name.txt文档,放在上述winr文件夹中。

   ![picture](https://github.com/Leo-2019/Leo-2019.github.io/blob/master/_posts/pictures/QuickStart/5.1.png?raw=true)

2. 在文档中添加命令信息。我在文档中说明了如何新加命令，命令的规则，和具体命令的详细信息。

   > **需要说明的是自定义的命令要与windows的系统命令不冲突，我采取的方法是不同类型的命令以不同符号开头。**

   ![picture](https://github.com/Leo-2019/Leo-2019.github.io/blob/master/_posts/pictures/QuickStart/5.2.png?raw=true)

   我将命令分为四种：文档、文件、app、网页、系统面板 。分别进行记录，其中文件必须注明文件所在的位置，防止后面忘记位置后，只能打开不能进行其他操作的尴尬。以下是我的记录内容，仅供参考。

   ![picture](https://github.com/Leo-2019/Leo-2019.github.io/blob/master/_posts/pictures/QuickStart/5.3.png?raw=true)

3. 为了方便管理和调取name.txt文件进行查询和更新，可以在winr文件夹内创建name.txt的快捷方式，并重命名为name。这样以后就可以直接在win+R中输入name命令进行查询和更新（你就说方便不方便，嘎嘎）。

   ![picture](https://github.com/Leo-2019/Leo-2019.github.io/blob/master/_posts/pictures/QuickStart/5.4.png?raw=true)

4. 另外，上述操作中已经将winr文件夹的路径添加到系统路径中了。以后需要看到底有哪些快捷方式和指令时直接win+R输入winr就能打开。

   ![picture](https://github.com/Leo-2019/Leo-2019.github.io/blob/master/_posts/pictures/QuickStart/5.5.png?raw=true)

5. 为了在电脑中容易辨识出哪些文件夹和文件是可以通过快捷方式启动的，在文件或文件夹的命名时以&或#开头。

   ![picture](https://github.com/Leo-2019/Leo-2019.github.io/blob/master/_posts/pictures/QuickStart/5.6.png?raw=true)

6. 为了桌面看起来干净也可以在某个地方创建一个名为#Desktop的文件夹，平时的临时文档尽量放在这里面。并将其按上文提到的文件夹设置为快捷命令启动方式进行设置。解放桌面。

   **【维护管理指令的关键是保证winr文件夹下快捷方式的名称和name.txt中的记录保持一致】**

## 小结

嘎嘎，经过上面一通猛如虎的操作，但凡你想快速打开的各种文件、文件夹、应用程序、网页、系统面板，你都可以通过敲键盘很快打开，十分装逼。这样便可以将桌面的图标全部清除，看起来桌面也很干净，并且也使自己的电脑只能自己使用，其他人用你的电脑不知道自定义命令会一脸懵逼，增加了电脑的安全性。🎉

通过我总结的这套方法论，即：快捷方式+系统路径+自定义命令管理表。可以快捷启动任何你能想到的东西。自由度非常高，常见的类型基本都可以，毕竟计算机上的任何东西都是程序嘛，也就是.exe，通过快捷方式这种间接寻址的方式将各种文件统一改名字和管理，其实整个过程就我的理解而言Win+R打开的启动框就是一个启动命令，类似将程序计数器指向某个.exe，而咱们的命令就是告诉计算机你去环境变量的系统路径中找以我这个命令命名的的快捷方式文件，而快捷方式文件就相当于指针的间接寻址，告诉计算机对应的.exe的路径在哪，然后让计算机去这个路径下找对应的程序并运行它。

所以，一切皆程序的理解就类似linux下一切皆文件一样。你只要找到你想要运行的东西的程序所在，你就可以自定义命令快捷启动它。因此，只要你可以记住自己的自定义命令并再了解一些windows的操作快捷键，那么你就可以不用或者很少用鼠标，同时操作速度飞速提高，工作效率噌噌噌往上涨，当然还能使作为程序员的你显得比较专业。😂

## 桌面布置

To be conntinue .......