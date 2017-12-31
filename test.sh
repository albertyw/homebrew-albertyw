#!/bin/bash

brew audit git-browse.rb
brew audit git-reviewers.rb

brew test git-browse
brew test git-reviewers
