# typed: true
# frozen_string_literal: true

# GitBrowse is a homebrew formula for the git-browse cli tool
class GitBrowse < Formula
  desc "Open git files, directories, commits, and branches in the browser"
  homepage "https://github.com/albertyw/git-browse"
  url "https://github.com/albertyw/git-browse/archive/v2.13.11.tar.gz"
  sha256 "dfba22c61ff9e3f06c76b1f33aa393841befd3e3fd23f35e7b93c1fcf27ca91e"
  license "MIT"

  head "https://github.com/albertyw/git-browse.git", using: :git

  depends_on "python"

  def install
    prefix.install "install.sh", "git_browse/browse.py"
  end

  def post_install
    system "#{prefix}/install.sh", prefix
  end
end
