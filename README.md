# ISALab Wiki 示例

本项目直接使用 Typst Universe 的 [Manifesto HTML 文档模板](https://typst.app/universe/package/manifesto/)。所有正文都是 `.typ` 文件；首页和每个章节分别编译为独立 HTML 页面。示例地址、命令、路径和服务规则都是占位内容。

## 目录结构

```text
.
├── chapters/
│   ├── getting-started.typ     # 入门指南
│   ├── lab-services.typ        # 账号、存储、计算资源
│   ├── tools.typ               # 工具指南
│   └── workflows.typ           # 工作流程
├── docs.typ                   # Wiki 首页与章节链接
├── wiki.typ                   # 共用模板配置
├── build.py                   # Python 构建脚本
└── dist/                       # index.html 与各章节 HTML 页面
```

## 构建

安装 Python 和 [uv](https://docs.astral.sh/uv/) 后运行：

```sh
uv run python build.py
```

Typst 编译器由项目的 `typst` Python 依赖提供，不依赖系统里的 Typst 命令。首页写入 `dist/index.html`，各章节分别生成 `dist/getting-started.html` 等页面；构建也不需要 npm 或 Node.js。

## 编辑

各章正文放在 `chapters/`。每个章节会单独编译成 HTML 页面；新增章节时，在 `build.py` 的 `CHAPTERS` 和 `docs.typ` 首页导航中加入条目。章节内用一级标题定义章节名，二级和三级标题划分小节。页面目录由 Manifesto 根据标题自动生成。

Manifesto 当前通过 CDN 加载页面样式；离线查看时需要另行处理这些资源。
