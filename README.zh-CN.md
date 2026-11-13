# 生物信息学科研仓库通用模板

这是一个供学生及 GPT、Codex 等 AI 编码助手使用的**全新、无真实研究数据的公共科研仓库模板**。不绑定疾病、物种、组学技术或未发表课题。

[English README](README.md) · [上手教程](docs/GETTING_STARTED.md) · [Agent 规范](AGENTS.md) · [学生提示词](STUDENT_PROMPT.zh-CN.md)

## 使用方式

1. 在 GitHub 创建**你自己的私有科研仓库**，复制本模板文件。除非课题负责人批准，**不要把实际研究仓库设为 Public**。
2. 填写 `config/project.yaml`、首页的研究简介、`docs/SCIENTIFIC_DESIGN.md`，并根据授权情况填写 `manifests/` 中的清单。
3. 让 AI Agent 先阅读 `AGENTS.md`、`phases/PHASE_LIFECYCLE.md`；新课题阶段使用 `python scripts/init_phase.py --id phase-01 --title "Your phase title"`。
4. 按照 `01_design → 02_campaign → 03_returns` 保存设计、执行指令、实际回传证据，不将“设计完成”误写成“已完成分析”。
5. 执行 `python scripts/validate_repo.py` 与 `python -m unittest discover -s tests -v`，通过 Pull Request 提交更新。

## 标准目录

| 目录 | 用途 |
| --- | --- |
| `docs/` | 科学设计、质量门槛、安全管理、维护方法 |
| `config/` | 项目元数据和配置 |
| `manifests/` | 数据来源、样本、软件环境和执行记录索引 |
| `ref-article/` | 文献及方法学索引 |
| `scripts/` | 可复现代码和仓库维护脚本 |
| `phases/` | 分阶段科研任务、独立轮次及审计归档 |

**科研底线：** 不编造数据和分析结果；不提交原始测序文件、可识别信息、未经授权的数据、密钥或私有路径；不覆盖既有回传记录；技术检查与生物学验证必须分开。

> 本模板本身是公共资料，不代表任何使用者的实际科研数据已经获得公开许可。
