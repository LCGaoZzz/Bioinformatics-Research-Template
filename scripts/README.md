# Local utilities

- `python scripts/init_phase.py --id phase-01 --title "..."` — create a planned phase with `NOT_EXECUTED` status; do not create real results.
- `python scripts/validate_repo.py` — check required files, internal Markdown links, phase index consistency, large/native file patterns and obvious credentials.
- `python -m unittest discover -s tests -v` — test template scaffolding.
- `bash scripts/publish_github.sh LCGaoZzz bioinformatics-research-template` — **optional** one-time GitHub CLI publisher from an extracted, clean folder with no `.git` history. Requires local `gh` authentication and explicit `PUBLIC` confirmation.

The validator is heuristic. A passing check cannot replace manual privacy, licensing or scientific review.
