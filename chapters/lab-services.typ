#import "../wiki.typ": wiki-template
#set document(title: [ISALab Wiki · 实验室服务])
#show: body => wiki-template(body)
#html.style("body { font-family: system-ui, -apple-system, 'Noto Sans CJK SC', 'Microsoft YaHei', sans-serif !important; } main > div:first-child table { display: none !important; }")

#link("index.html")[← Wiki 首页]　·　#link("getting-started.html")[← 上一章]　·　#link("tools.html")[下一章：工具指南 →]

= 实验室服务

本章集中说明实验室提供的基础服务。登录主机、路径和策略均为占位示例，正式发布前需要由服务负责人核实。

== 账号与访问

`login.example.edu` 和 `your_name` 均为示例值。

=== 申请与首次登录

+ 向服务负责人提交账号申请。
+ 收到开通通知后设置密码或 SSH 公钥。
+ 使用示例命令检查 SSH 登录：

```sh
ssh your_name@login.example.edu
```

=== 常见问题

*登录超时*：确认网络连接、主机名和服务状态。*权限不足*：请负责人核对账号所属项目组。

不要在 Wiki、聊天记录或代码仓库中粘贴密码、访问令牌和私钥。

== 共享存储

路径 `/shared/projects/demo` 只是占位值。本节正式版应写明可用目录、配额和数据保留规则。

=== 目录建议

#table(
  columns: (1fr, 2fr, 1.5fr),
  table.header([目录], [用途], [示例保留策略]),
  [`home`], [个人配置与少量脚本], [按服务规则],
  [`projects`], [项目协作数据], [按项目约定],
  [`scratch`], [临时中间结果], [定期清理],
)

=== 上传与核对

以下命令仅用于展示写法；请替换为实验室真实地址和路径。

```sh
rsync -av ./results/ your_name@login.example.edu:/shared/projects/demo/
```

上传后检查文件数量、大小和权限。重要结果还应记录产生它们的脚本版本与参数。

=== 正式发布前需确认

- 哪些目录有备份，保留多久
- 个人与项目配额
- 大文件传输方式
- 敏感数据存放要求

== 计算资源

节点名、队列名与命令均为占位示例。正式说明应包含资源配额、排队规则和故障联系渠道。

=== 运行前

+ 阅读资源配额与作业时长限制。
+ 将输入文件放到项目目录，确认输出目录空间充足。
+ 在小数据集上验证脚本。

=== 示例作业

```sh
#!/usr/bin/env bash
# 请按实际调度系统修改
python train.py --config configs/demo.yaml
```

记录作业编号、开始时间、使用资源和输出位置。作业失败时，先查看日志，再检查依赖、路径和内存限制。
