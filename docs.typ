#import "@preview/manifesto:0.2.0": info
#import "wiki.typ": wiki-template

#set document(title: [ISALab Wiki], description: [实验室服务与工具使用指南示例])
#show: body => wiki-template(body)

// Manifesto 默认显示面向 Typst 包的元数据；实验室 Wiki 暂不需要这张表。
#html.style("body { font-family: system-ui, -apple-system, 'Noto Sans CJK SC', 'Microsoft YaHei', sans-serif !important; } main > div:first-child table { display: none !important; }")

= 概览

欢迎来到 ISALab Wiki。这里集中整理实验室服务、研究工具和日常工作流程。

#info(title: "预览说明")[当前文章均为占位示例。账号、主机名、路径和服务规则请在正式使用前替换。]

== 章节

- #link("getting-started.html")[*入门指南*]：新成员了解账号申请、访问方式和上手步骤。
- #link("lab-services.html")[*实验室服务*]：查阅账号、存储与计算资源的使用说明。
- #link("tools.html")[*工具指南*]：查看 Git、uv、Typst 等工具的操作示例。
- #link("workflows.html")[*工作流程*]：了解项目启动、数据处理和结果归档的建议流程。
