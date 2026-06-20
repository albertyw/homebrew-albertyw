# typed: true
# frozen_string_literal: true

# ReqUpdate is a homebrew formula for the req-update cli tool
class ReqUpdate < Formula
  desc "Automatically update your project's dependencies"
  homepage "https://github.com/albertyw/req-update"
  url "https://github.com/albertyw/req-update/archive/v2.9.1.tar.gz"
  sha256 "b336d81cace6694979c3c0a286a0173ea066cc2ce4d1ee9ef1084154fd62be97"
  license "MIT"

  head "https://github.com/albertyw/req-update.git", using: :git

  depends_on "python"

  livecheck do
    url :stable
    strategy :github_latest
  end

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"req_update/req_update.py"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/req_update.py --version")
  end
end
