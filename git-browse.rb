class GitBrowse < Formula
  desc "Open git files, directories, commits, and branches in the browser"
  homepage "https://github.com/albertyw/git-browse"
  url "https://github.com/albertyw/git-browse/archive/v2.4.3.tar.gz"
  sha256 "3956f6effd2cbfa7b37a022435b5626d846ad05c7504849410440c5a6e00e828"

  head "https://github.com/albertyw/git-browse.git", :using => :git

  depends_on :python3

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
