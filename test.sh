#!/bin/bash

set -euxo pipefail
IFS=$'\n\t'

export HOMEBREW_DEVELOPER=1
brew developer on

brew typecheck

for formula in git-browse git-reviewers req-update; do
  brew audit ./$formula.rb --formula --strict
  brew install ./$formula.rb --formula --build-from-source
  brew test ./$formula.rb --formula
  brew uninstall ./$formula.rb --formula
done
