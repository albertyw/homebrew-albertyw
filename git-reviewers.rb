# typed: true
# frozen_string_literal: true

# GitReviewers is a homebrew formula for the git-reviewers cli tool
class GitReviewers < Formula
  desc "Find code reviewers for a git commit"
  homepage "https://github.com/albertyw/git-reviewers"
  url "https://github.com/albertyw/git-reviewers/archive/refs/tags/v0.13.7.tar.gz"
  sha256 "509a91903b908b773b553b72ac513f7e37b8b2bcdac2a4a02626f9cd26bc5c81"
  license "MIT"

  head "https://github.com/albertyw/git-reviewers.git", using: :git

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on "python"

  def install
    libexec.install "git_reviewers/reviewers.py"
    (bin/"git-reviewers").write <<~EOS
      #!/bin/bash
      exec "#{libexec}/reviewers.py" "$@"
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-reviewers --version")
  end
end
