# typed: true
# frozen_string_literal: true

# GitReviewers is a homebrew formula for the git-reviewers cli tool
class GitReviewers < Formula
  desc "Open git files, directories, commits, and branches in the reviewersr"
  homepage "https://github.com/albertyw/git-reviewers"
  url "https://github.com/albertyw/git-reviewers/archive/v0.13.6.tar.gz"
  sha256 "39530a732d1e3d98deb51ed87458bc2ebee534483c054b4be39cb1983ed26661"
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
