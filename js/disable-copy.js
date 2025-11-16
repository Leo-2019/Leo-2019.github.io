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