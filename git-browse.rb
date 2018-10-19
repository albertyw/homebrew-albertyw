class GitBrowse < Formula
  desc "Open git files, directories, commits, and branches in the browser"
  homepage "https://github.com/albertyw/git-browse"
  url "https://github.com/albertyw/git-browse/archive/v2.7.0.tar.gz"
  sha256 "99387b8cd704e2017c9fffce45a9c40522ac789b956ad659bd79ea5b793fbd78"

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
