---
title: Next 文章实现禁止复制
date: 2025-11-10 00:00:16
categories:
  - 技术
tags:
  - Hexo
---

<blockquote class="blockquote-center">
为了更好的保护个人博文创作，可以通过设置，在 Hexo Next 主题中禁止文章文本复制，可通过添加 CSS 和 JavaScript 代码实现，既能阻止选中和复制文本，又能灵活保留必要功能（如代码块复制）。
</blockquote>
<!-- more -->

## 方法：全局禁止文本复制（保留代码块可复制）
### 1. 添加自定义 CSS（禁止文本选中）
进入主题的自定义 CSS 文件（路径：themes/next/source/css/_custom/custom.styl），添加以下代码：
```markdown

/* 禁止文章内容文本被选中（不影响代码块） */
.post-body {
  user-select: none; /* 标准属性 */
  -webkit-user-select: none; /* Chrome/Safari */
  -moz-user-select: none; /* Firefox */
  -ms-user-select: none; /* IE/Edge */
}

/* 允许代码块选中复制（如果需要） */
.post-body pre,
.post-body code {
  user-select: text !important; /* 覆盖禁止选中，允许代码块复制 */
}
```

作用：user-select: none 会禁止文章正文文本被鼠标选中（无法选中则无法复制），但通过 !important 保留了代码块的选中权限。

### 2. 添加 JavaScript（拦截复制事件）

为进一步阻止通过快捷键（如 Ctrl+C）或右键菜单复制，需添加 JS 拦截：
在 themes/next/source/js/ 目录下新建 disable-copy.js，内容如下：
```
// 等待页面加载完成
document.addEventListener('DOMContentLoaded', function() {
  // 获取文章内容容器（根据主题版本调整选择器，Next 通常为 .post-body）
  const postContent = document.querySelector('.post-body');
  if (!postContent) return;

  // 拦截右键菜单（避免右键复制）
  postContent.addEventListener('contextmenu', function(e) {
    e.preventDefault();
  });

  // 拦截快捷键复制（Ctrl+C / Cmd+C）
  postContent.addEventListener('keydown', function(e) {
    if ((e.ctrlKey || e.metaKey) && e.key === 'c') {
      e.preventDefault();
    }
  });
});

```

在主题布局中引入该 JS 文件：打开 themes/next/layout/_layout.njk（或 _layout.swig，取决于 Next 版本），在 </body> 标签前添加：
```markdown
<script src="/js/disable-copy.js"></script>
```

### 3. 生效与验证
执行命令重启服务：
```markdown
bash
hexo clean && hexo server
```
打开任意文章测试：
* 鼠标选中正文文本 → 无法选中（或选中无反应）。
* 按 Ctrl+C 复制选中内容 → 无效。
* 右键点击正文 → 无复制菜单。
* 代码块(</pre> 或 </code> 标签内)→ 可正常选中复制（若保留了代码块权限）。

## 补充说明

仅禁止部分页面：若只想禁止文章页复制，可在 JS 中判断当前页面路径（如 if (window.location.pathname.includes('/posts/')) { ... }）。
    完全禁止所有复制：删除 CSS 中代码块的 user-select: text 配置，即可连代码块一起禁止。
兼容性：该方法适配 Next 主题主流版本（v7/v8/v9），若选择器（如 .post-body）无效，可通过浏览器开发者工具（F12）查看文章容器的实际类名并替换。通过 CSS 禁止选中 + JS 拦截事件，能有效阻止大部分复制行为，同时兼顾灵活性。


