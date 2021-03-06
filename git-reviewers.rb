# typed: false
# frozen_string_literal: true

# GitReviewers is a homebrew formula for the git-reviewers cli tool
class GitReviewers < Formula
  desc "Open git files, directories, commits, and branches in the reviewersr"
  homepage "https://github.com/albertyw/git-reviewers"
  url "https://github.com/albertyw/git-reviewers/archive/v0.13.2.tar.gz"
  sha256 "c70fed9333df24d20534efd4e6ac5528ea552b29ae6236e498879ff2c2f8642d"

  head "https://github.com/albertyw/git-reviewers.git", using: :git

  depends_on "python"

  def install
    prefix.install "install.sh", "git_reviewers/reviewers.py"
  end

  def post_install
    system "#{prefix}/install.sh", prefix
  end
end
