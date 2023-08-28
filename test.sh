#!/bin/bash

set -euxo pipefail
IFS=$'\n\t'

brew developer on
brew typecheck

# brew audit ./git-browse.rb --formula
# brew audit ./git-reviewers.rb --formula
# brew audit ./req-update.rb --formula

brew install ./git-browse.rb --formula --build-from-source
brew install ./git-reviewers.rb --formula --build-from-source
brew install ./req-update.rb --formula --build-from-source
