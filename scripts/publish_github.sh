#!/usr/bin/env bash
# OPTIONAL owner-side helper. Creates a *new public* GitHub repository from
# this independent scaffold; never publishes or forks a private study.
set -euo pipefail

OWNER="${1:-LCGaoZzz}"
REPO="${2:-bioinformatics-research-template}"
if [[ ! "$OWNER" =~ ^[A-Za-z0-9-]+$ || ! "$REPO" =~ ^[A-Za-z0-9._-]+$ ]]; then
  echo "Invalid owner/repository name" >&2; exit 2
fi
if ! command -v gh >/dev/null 2>&1; then
  echo "GitHub CLI (gh) is required: https://cli.github.com/" >&2; exit 2
fi
if ! gh auth status >/dev/null 2>&1; then
  echo "Please authenticate locally with: gh auth login" >&2; exit 2
fi
cd "$(dirname "$0")/.."
python scripts/validate_repo.py
python -m unittest discover -s tests -v
if [[ -d .git ]]; then
  echo "Refusing to publish a directory with existing .git history." >&2
  echo "Use a fresh extracted copy of this template, not a study clone." >&2
  exit 3
fi
read -r -p "Create PUBLIC GitHub repository ${OWNER}/${REPO} from this clean scaffold? Type PUBLIC to continue: " CONFIRM
[[ "$CONFIRM" == "PUBLIC" ]] || { echo "Cancelled"; exit 4; }
git init -b main
git add .
git -c user.name="${GIT_AUTHOR_NAME:-Template Maintainer}" -c user.email="${GIT_AUTHOR_EMAIL:-template-maintainer@users.noreply.github.com}" commit -m "chore: initialize independent bioinformatics research template"
gh repo create "${OWNER}/${REPO}" --public --source . --remote origin --push --description "Generic bioinformatics research repository template with agent and phase governance"
echo "Published: https://github.com/${OWNER}/${REPO}"
