# typed: false
# frozen_string_literal: true

# GitBrowse is a homebrew formula for the git-browse cli tool
class GitBrowse < Formula
  desc "Open git files, directories, commits, and branches in the browser"
  homepage "https://github.com/albertyw/git-browse"
  url "https://github.com/albertyw/git-browse/archive/v2.10.0.tar.gz"
  sha256 "60ca11b87ef14111f9b75955a174f69d1de83de721f8f5f0383df6c7a89495b4"

  head "https://github.com/albertyw/git-browse.git", using: :git

  depends_on "python"

  def install
    prefix.install "install.sh", "git_browse/browse.py"
  end

  def post_install
    system "#{prefix}/install.sh", prefix
  end

  test do
    system "git", "config", "--file", "/Users/#{ENV["USER"]}/.gitconfig", "alias.browse"
  end
end
