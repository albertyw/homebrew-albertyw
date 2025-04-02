# typed: true
# frozen_string_literal: true

# GitBrowse is a homebrew formula for the git-browse cli tool
class GitBrowse < Formula
  desc "Open git files, directories, commits, and branches in the browser"
  homepage "https://github.com/albertyw/git-browse"
  url "https://github.com/albertyw/git-browse/archive/v2.14.1.tar.gz"
  sha256 "81db6c053bf05d94f318165a7ad24744c3317d67e9fd4b05501069ae2eafb141"
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
