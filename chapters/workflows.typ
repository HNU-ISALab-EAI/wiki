#import "../wiki.typ": wiki-template
#set document(title: [ISALab Wiki · 工作流程])
#show: body => wiki-template(body)
#html.style("body { font-family: system-ui, -apple-system, 'Noto Sans CJK SC', 'Microsoft YaHei', sans-serif !important; } main > div:first-child table { display: none !important; }")

#link("index.html")[← Wiki 首页]　·　#link("tools.html")[← 上一章]

= 工作流程

本章用几个常见场景串起服务和工具，帮助成员把项目资料、计算任务与最终结果组织在一起。以下步骤为示例流程。

== 启动一个新项目

+ 确认项目成员、负责人、数据权限和预期产出。
+ 申请项目目录及所需计算资源。
+ 建立代码仓库，写明环境配置和运行入口。
+ 记录数据来源、许可条件和备份策略。

== 运行分析任务

+ 在小规模输入上验证代码和依赖环境。
+ 把正式输入、脚本版本、参数和资源需求记录下来。
+ 提交任务后保存作业编号，并检查日志与输出。
+ 将重要结果复制到项目持久目录，不要只留在临时空间。

== 发布与归档

+ 整理可复现的代码版本、环境锁文件和运行说明。
+ 记录关键结果的路径、生成方式和负责人。
+ 按项目约定清理临时文件，并确认长期保存位置。

== 待补充

补充实验室的数据管理规范、项目交接清单、发表前审查要求及归档负责人。
