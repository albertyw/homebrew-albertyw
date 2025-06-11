# typed: true
# frozen_string_literal: true

# GitBrowse is a homebrew formula for the git-browse cli tool
class GitBrowse < Formula
  desc "Open git files, directories, commits, and branches in the browser"
  homepage "https://github.com/albertyw/git-browse"
  url "https://github.com/albertyw/git-browse/archive/v2.14.2.tar.gz"
  sha256 "550c43af0465153ec920b6bd5e44903f4bd4043cb04d41ea7c4de7ce6d5ef01a"
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
