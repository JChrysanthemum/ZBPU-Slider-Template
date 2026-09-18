# ZBPU Beamer Template

![](assets/header_logo.png)


淄博职业技术大学 TeX 演示模板，适用于课程讲授与项目汇报。


## 基本环境

- TeX Live 2021+ 或 MiKTeX
- VS Code + LaTeX Workshop
- Python 3 + Pygments（供 `minted` 使用）
- 使用 XeLaTeX，并启用 `-shell-escape -8bit`

在 VS Code 中选择仓库自带的 `xe->xe` 配方即可编译。命令行可连续执行两次：

```powershell
xelatex -shell-escape -8bit template.tex
xelatex -shell-escape -8bit template.tex
```

`_minted-*` 与 `.aux`、`.log` 等均为编译缓存，可安全删除，重新编译时会自动生成。

## 参考

代码页采用 `minted`，参考 [Overleaf: Code Presentations Example](https://www.overleaf.com/latex/examples/code-presentations-example-different-ways-shown-in-beamer-metropolis/tsxpnyjbhbds)。

## 文件结构

```text
.
├─ template.tex             # 模板源文件
├─ template.pdf             # 编译预览
├─ assets/                  # 校标与页眉素材
│  ├─ cover_logo.png
│  ├─ cover_mark.png
│  └─ header_logo.png
└─ .vscode/settings.json    # LaTeX Workshop 编译配置
```
