# typed: true
# frozen_string_literal: true

# GitReviewers is a homebrew formula for the git-reviewers cli tool
class GitReviewers < Formula
  desc "Open git files, directories, commits, and branches in the reviewersr"
  homepage "https://github.com/albertyw/git-reviewers"
  url "https://github.com/albertyw/git-reviewers/archive/v0.13.4.tar.gz"
  sha256 "e65cf9b7cfae58989db7cf4b47cedde25d97e958f8cbcd47b7a92140b35bd16c"
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
