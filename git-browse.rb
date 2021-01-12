class GitBrowse < Formula
  desc "Open git files, directories, commits, and branches in the browser"
  homepage "https://github.com/albertyw/git-browse"
  url "https://github.com/albertyw/git-browse/archive/v2.9.0.tar.gz"
  sha256 "41df3063d48d74e9117850f4f11bd30ad2e0b65800a93dec1f5bc7fde9abe440"

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
