#!/bin/bash

brew audit ./git-browse.rb --formula
brew audit ./git-reviewers.rb --formula

brew install ./git-browse.rb --formula --build-from-source
brew install ./git-reviewers.rb --formula --build-from-source
