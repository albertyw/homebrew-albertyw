# typed: true
# frozen_string_literal: true

# GitBrowse is a homebrew formula for the git-browse cli tool
class GitBrowse < Formula
  desc "Open git files, directories, commits, and branches in the browser"
  homepage "https://github.com/albertyw/git-browse"
  url "https://github.com/albertyw/git-browse/archive/v2.15.1.tar.gz"
  sha256 "95f8b65ce25d3f477b26412fe37305815c17b0672724279ad7a1d8e6334b4fc4"
  license "MIT"

  head "https://github.com/albertyw/git-browse.git", using: :git

  depends_on "python"

  livecheck do
    url :stable
    strategy :github_latest
  end

  def install
    libexec.install "git_browse/browse.py"
    (bin/"git-browse").write <<~EOS
      #!/bin/bash
      exec "#{libexec}/browse.py" --path="${GIT_PREFIX:-./}" "$@"
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/git-browse --version")
  end
end
