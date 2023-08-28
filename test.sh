#!/bin/bash

set -euxo pipefail
IFS=$'\n\t'

brew developer on
brew typecheck

# brew audit ./git-browse.rb --formula
# brew audit ./git-reviewers.rb --formula
# brew audit ./req-update.rb --formula

brew install ./git-browse.rb --formula --build-from-source
brew uninstall ./git-browse.rb --formula

brew install ./git-reviewers.rb --formula --build-from-source
brew uninstall ./git-reviewers.rb --formula

brew install ./req-update.rb --formula --build-from-source
brew uninstall ./req-update.rb --formula
