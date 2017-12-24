class GitReviewers < Formula
  desc "Open git files, directories, commits, and branches in the reviewersr"
  homepage "https://github.com/albertyw/git-reviewers"
  url "https://github.com/albertyw/git-reviewers/archive/v0.6.1.tar.gz"
  sha256 "47f5a453071ea08acec9263347518e77dd42633b4f9f1b2b47ae55cc3b911e15"

  head "https://github.com/albertyw/git-reviewers.git", :using => :git

  depends_on :python3

  def install
    prefix.install "install.sh", "git_reviewers/reviewers.py"
  end

  def post_install
    system "#{prefix}/install.sh", prefix
    system "rm", "#{prefix}/install.sh"
  end

  test do
    system "git", "config", "--file", "/Users/#{ENV["USER"]}/.gitconfig", "alias.reviewers"
  end
end
