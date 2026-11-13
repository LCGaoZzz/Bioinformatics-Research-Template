# Bioinformatics Research Repository Template

**A clean, phase-oriented research workspace for humans and AI coding agents.**

[中文指南](README.zh-CN.md) · [Get started](docs/GETTING_STARTED.md) · [Scientific rules](AGENTS.md) · [Phase lifecycle](phases/PHASE_LIFECYCLE.md) · [Data safety](docs/DATA_POLICY.md)

> **Status: TEMPLATE ONLY.** This repository contains **no study data, real experiment, analyses, results, or completed research rounds**. Example paths and fields are placeholders and do not assert that work has been performed.

## Why this template?

Bioinformatics projects need more than code: scientific decisions, input provenance, analysis contracts, execution logs, returned evidence, limitations, and independent review must remain distinguishable. This template provides a lightweight, reusable framework without prescribing a particular organism, disease, assay, or method.

## At a glance

| Area | What belongs here | Entry point |
| --- | --- | --- |
| Research scope | Questions, hypotheses, design decisions | [Scientific design](docs/SCIENTIFIC_DESIGN.md) |
| Data provenance | Data registration; authorized storage *references* | [Manifest rules](manifests/README.md) |
| Quality and claims | Eligibility checks and interpretation boundaries | [Quality gates](docs/QUALITY_GATES.md) |
| Planned work | Design contracts distinct from execution | [Phase organization](phases/README.md) |
| Returned evidence | Immutable run records and audit trails | [Lifecycle](phases/PHASE_LIFECYCLE.md) |
| Agent collaboration | Rules for Codex, GPT and other tools | [AGENTS.md](AGENTS.md) |
| Repository maintenance | Reviews, change control and release hygiene | [Contributing](CONTRIBUTING.md) |

## Project metadata

When adopting this template, replace these fields with truthful information:

| Field | To be completed by the project owner |
| --- | --- |
| Project name | `TODO: PROJECT_NAME` |
| Scientific question | `TODO: RESEARCH_QUESTION` |
| Assay(s) / organism | `TODO: ASSAYS_AND_MODEL` |
| Project owner | `TODO: PROJECT_OWNER` |
| Data access level | `TODO: PRIVATE / CONTROLLED / PUBLIC` |
| Current phase | **Not started** |
| Latest validated result | **None** |

## Directory structure

```text
.
├── .github/                  # Review and CI automation
├── config/                   # Project-level configuration
├── docs/                     # Scientific design, policies and guides
├── manifests/                # Source/sample/environment registries (headers only)
├── ref-article/              # Reference reading and methods notes
├── scripts/                  # Local utilities and structural checks
├── tests/                    # Template test suite
├── phases/
│   ├── PHASE_INDEX.tsv       # Phase overview, empty until real work begins
│   ├── PHASE_LIFECYCLE.md    # Design/execution/review state machine
│   └── _template/            # Copy to phases/phase-01, phase-02, ...
│       ├── 01_design/        # Pre-run scientific contract
│       ├── 02_campaign/      # Agent execution + return instructions
│       └── 03_returns/       # Read-only outputs *after* actual execution
├── AGENTS.md                 # General agent rules
├── CLAUDE.md                 # Pointers for compatible agent clients
└── README.zh-CN.md           # Student-friendly quick start
```

## A typical research round

1. **Define** — specify the scientific question, contrasts, inputs, exclusion criteria, analysis plan, and acceptance gates in `01_design/`.
2. **Freeze** — review and version the design; issue an agent-specific instruction from `02_campaign/`.
3. **Execute** — perform real analyses in an authorized environment; log commands, versions, parameters, inputs and failures.
4. **Return** — archive allowable summaries and metadata as a unique `03_returns/Rxxx/` package, linking external large or sensitive artifacts by authorized reference.
5. **Review** — audit file integrity and scientific interpretation *separately*. Only an authorized reviewer can approve biological claims.
6. **Update** — adjust the phase index and reporting status only after a real status change; preserve prior returns.

**A design document is not a completed experiment. A successful CI check is not scientific validation.**

## Quick start

```bash
# Local copy; rename the folder for your own project.
python scripts/init_phase.py --id phase-01 --title "Initial data assessment"
python scripts/validate_repo.py
python -m unittest discover -s tests -v
```

`init_phase.py` creates a *design-only* phase, never synthetic results. Edit the generated contracts and register your authorized inputs before executing analysis.

## Safety and publication

This template was written as a **new, independent public scaffold**. It does not include files, commit history, citations to unpublished studies, internal dataset IDs, analysis outcomes, or scientific assets from any private project. See [public release checklist](docs/PUBLIC_RELEASE_CHECKLIST.md) before making a project public.

The template's code and documentation are distributed under the [MIT License](LICENSE). Rights in third-party datasets, methods, software, and figures are **not** granted by this license.
