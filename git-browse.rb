class GitBrowse < Formula
  desc "Open git files, directories, commits, and branches in the browser"
  homepage "https://github.com/albertyw/git-browse"
  url "https://github.com/albertyw/git-browse/archive/v2.5.0.tar.gz"
  sha256 "667b588938a92697a09f2b0e5505d3760eac20f8a821ea13f5d93ad2aa994b17"

  head "https://github.com/albertyw/git-browse.git", :using => :git

  depends_on "python3"

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
