#import "@preview/manifesto:0.2.0": template

#let wiki-template(body) = template(
  body + html.script(
    "document.querySelectorAll('details[name=outline-accordion]').forEach(section => { section.removeAttribute('name'); section.open = true; });",
  ),
  name: "ISALab Wiki",
  description: "实验室服务与工具使用指南",
  repository: "https://github.com/HNU-ISALab-EAI/ISALab-Wiki",
)
