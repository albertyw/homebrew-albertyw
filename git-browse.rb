class GitBrowse < Formula
  desc "Open git files, directories, commits, and branches in the browser"
  homepage "https://github.com/albertyw/git-browse"
  url "https://github.com/albertyw/git-browse/archive/v2.5.1.tar.gz"
  sha256 "d5148321dbdcaf91989954bf452221b43f60e74aba4a832c93c36440cbe8c566"

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
