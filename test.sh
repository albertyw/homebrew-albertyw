#!/bin/bash

set -euxo pipefail
IFS=$'\n\t'

export HOMEBREW_DEVELOPER=1
brew developer on

brew typecheck

brew tap albertyw/albertyw .

for formula in git-browse git-reviewers req-update; do
  brew audit albertyw/albertyw/$formula --strict
  brew install albertyw/albertyw/$formula --build-from-source
  brew test albertyw/albertyw/$formula
  brew uninstall albertyw/albertyw/$formula
done
