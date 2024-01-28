# typed: true
# frozen_string_literal: true

# GitBrowse is a homebrew formula for the git-browse cli tool
class GitBrowse < Formula
  desc "Open git files, directories, commits, and branches in the browser"
  homepage "https://github.com/albertyw/git-browse"
  url "https://github.com/albertyw/git-browse/archive/v2.13.9.tar.gz"
  sha256 "61174666e8c72d1aca4a3f9b222266153942edb6b28b0b0812c0ad0e8386fb56"
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
