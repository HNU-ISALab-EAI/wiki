#import "../wiki.typ": wiki-template
#set document(title: [ISALab Wiki · 工具指南])
#show: body => wiki-template(body)
#html.style("body { font-family: system-ui, -apple-system, 'Noto Sans CJK SC', 'Microsoft YaHei', sans-serif !important; } main > div:first-child table { display: none !important; }")

#link("index.html")[← Wiki 首页]　·　#link("lab-services.html")[← 上一章]　·　#link("workflows.html")[下一章：工作流程 →]

= 工具指南

本章提供常用研究与开发工具的占位说明。团队正式版可以为每个工具补充推荐版本、安装渠道、维护人和常见问题。

== 工具索引

#table(
  columns: (1fr, 1.5fr, 2fr),
  table.header([工具], [用途], [建议记录]),
  [Git], [版本管理], [仓库地址与协作流程],
  [uv], [Python 环境管理], [Python 版本、依赖和运行命令],
  [Typst], [文档编写], [模板与构建命令],
)

== Python 项目与 uv

在项目根目录同步依赖并运行程序：

```sh
uv sync
uv run python -m your_project
```

请把项目需要的 Python 版本和依赖写入 `pyproject.toml`，并提交 `uv.lock`，方便团队复现环境。

== Git 协作

=== 常用操作

```sh
git clone <仓库地址>
git switch -c feature/my-change
git add .
git commit -m "Describe the change"
git push -u origin feature/my-change
```

正式版应补充实验室 Git 服务地址、分支约定、审查流程，以及大文件的存储方式。

== Typst 文档

本 Wiki 使用 Typst Universe 的 Manifesto HTML 文档模板。修改 `.typ` 文件后，通过仓库提供的 Python 构建脚本生成 `dist/index.html`。
