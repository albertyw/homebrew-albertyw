class GitBrowse < Formula
  desc "Open git files, directories, commits, and branches in the browser"
  homepage "https://github.com/albertyw/git-browse"
  url "https://github.com/albertyw/git-browse/archive/v2.6.0.tar.gz"
  sha256 "73d1fee5a62c331c860551da99fc4d02e69423e2aa7d895e64580b13dbe4a27d"

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
