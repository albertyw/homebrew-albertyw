# typed: true
# frozen_string_literal: true

# GitReviewers is a homebrew formula for the git-reviewers cli tool
class GitReviewers < Formula
  desc "Open git files, directories, commits, and branches in the reviewersr"
  homepage "https://github.com/albertyw/git-reviewers"
  url "https://github.com/albertyw/git-reviewers/archive/v0.13.5.tar.gz"
  sha256 "b3241a9d9a3f7f14c57b4c64bbbf7bc644724e3674d20035aab6f46765fa4cc0"
  license "MIT"

  head "https://github.com/albertyw/git-reviewers.git", using: :git

  depends_on "python"

  def install
    prefix.install "install.sh", "git_reviewers/reviewers.py"
  end

  def post_install
    system "#{prefix}/install.sh", prefix
  end
end
