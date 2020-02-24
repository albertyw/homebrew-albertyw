class GitBrowse < Formula
  desc "Open git files, directories, commits, and branches in the browser"
  homepage "https://github.com/albertyw/git-browse"
  url "https://github.com/albertyw/git-browse/archive/v2.7.1.tar.gz"
  sha256 "ab3b89c262ed4a6d5f40425565fc7b6653e19dc378e1205912dff6168cf35241"

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
