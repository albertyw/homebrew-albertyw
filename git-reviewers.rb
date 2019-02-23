class GitReviewers < Formula
  desc "Open git files, directories, commits, and branches in the reviewersr"
  homepage "https://github.com/albertyw/git-reviewers"
  url "https://github.com/albertyw/git-reviewers/archive/v0.12.2.tar.gz"
  sha256 "4ba8d58160103f6de6304eb39bda43246c9dd212dbc47bed252ed62dae4959dd"

  head "https://github.com/albertyw/git-reviewers.git", :using => :git

  depends_on "python3"

  def install
    prefix.install "install.sh", "git_reviewers/reviewers.py"
  end

  def post_install
    system "#{prefix}/install.sh", prefix
    system.rm "#{prefix}/install.sh"
  end

  test do
    system "git", "config", "--file", "/Users/#{ENV["USER"]}/.gitconfig", "alias.reviewers"
  end
end
