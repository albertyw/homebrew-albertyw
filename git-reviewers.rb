class GitReviewers < Formula
  desc "Open git files, directories, commits, and branches in the reviewersr"
  homepage "https://github.com/albertyw/git-reviewers"
  url "https://github.com/albertyw/git-reviewers/archive/v0.11.1.tar.gz"
  sha256 "4988ac322fdefe1d7795465778923589a57b5f4ea8ea9645cba27a4122c13f73"

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
