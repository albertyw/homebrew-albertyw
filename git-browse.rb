class GitBrowse < Formula
  desc "Open git files, directories, commits, and branches in the browser"
  homepage "https://github.com/albertyw/git-browse"
  url "https://github.com/albertyw/git-browse/archive/v2.7.2.tar.gz"
  sha256 "fcd95ec49ddeec32bc1d1941deea55c66c6a10d3d1cfafd874560347a47426ac"

  head "https://github.com/albertyw/git-browse.git", :using => :git

  depends_on "python"

  def install
    prefix.install "install.sh", "git_browse/browse.py"
  end

  def post_install
    system "#{prefix}/install.sh", prefix
    system.rm "#{prefix}/install.sh"
  end

  test do
    system "git", "config", "--file", "/Users/#{ENV["USER"]}/.gitconfig", "alias.browse"
  end
end
