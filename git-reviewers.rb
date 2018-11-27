class GitReviewers < Formula
  desc "Open git files, directories, commits, and branches in the reviewersr"
  homepage "https://github.com/albertyw/git-reviewers"
  url "https://github.com/albertyw/git-reviewers/archive/v0.11.0.tar.gz"
  sha256 "0367d7e22ae54c16a45d9917bf2b9e62ab62c60da8d20b3e51d8ac8ce857230f"

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
