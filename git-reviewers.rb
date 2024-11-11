# typed: true
# frozen_string_literal: true

# GitReviewers is a homebrew formula for the git-reviewers cli tool
class GitReviewers < Formula
  desc "Open git files, directories, commits, and branches in the reviewersr"
  homepage "https://github.com/albertyw/git-reviewers"
  url "https://github.com/albertyw/git-reviewers/archive/v0.13.7.tar.gz"
  sha256 "509a91903b908b773b553b72ac513f7e37b8b2bcdac2a4a02626f9cd26bc5c81"
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
