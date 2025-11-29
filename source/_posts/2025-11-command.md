---
title: 常用命令大全
tags:
  - 笔记
categories:
  - 工作
date: 2025-11-22 18:58:58
---

<blockquote class="blockquote-center">
工作中常用的命令备忘
</blockquote>

<!-- more -->

## <i class="fab fa-github"></i> Git

### ⏩ 本地改动 临时保存
```
保存：git stash
弹出：git stash pop
```
### ⏩ Commit 整体撤销

| 描述 |命令 <span style="width: 200px; display: inline-block;"></span> |
| :------------------------- | :------------------------- |
| 撤销commit 不撤销add,不删除工作空间改动 | ```git reset --soft HEAD^``` | 
| 撤销commit 撤销add,  不删除工作空间改动 | ``git reset --mixed HEAD^``  |  
| 撤销commit 撤销add,  删除工作空间改动 | ``git reset --hard HEAD^``  |  

### ⏩ Commit 撤销单独一个文件
```
git reset HEAD^ 文件名
git checkout 文件名

```

##  <i class="fab fa-linux"></i> Shell

### ⏩ Commit 整体撤销

| 描述 |命令 <span style="width: 200px; display: inline-block;"></span> | 
| :------------------------- | :-- | 
| 查找文件 |``` find . -name "*.c" ```|

### ⏩ 文件权限

{% note danger%} 
常用： ``` chmod 777 文件名 ```
{% endnote %}


|数字权限|	字符权限（普通文件）|	字符权限（目录）|	场景|
| :-------- | :-- | :----------|:-------- |
|755|	-rwxr-xr--|	drwxr-xr-x	|公开可执行文件 / 目录（如网站程序）
|644|	-rw-r--r--|	-（目录需 x 权限）	|公开可读文件（如文档、配置文件）
|700|	-rwx------|	drwx------	|私有文件 / 目录（仅所有者可操作）
|777|	-rwxrwxrwx|	drwxrwxrwx	|完全开放（不推荐，安全风险）

---
