# typed: true
# frozen_string_literal: true

# ReqUpdate is a homebrew formula for the req-update cli tool
class ReqUpdate < Formula
  desc "Automatically update your project's dependencies"
  homepage "https://github.com/albertyw/req-update"
  url "https://github.com/albertyw/req-update/archive/refs/tags/v2.10.0.tar.gz"
  sha256 "2ee42be9941121c7c357530d368e93588113a0ef28cc339d4e292184f6edfb89"
  license "MIT"

  head "https://github.com/albertyw/req-update.git", using: :git

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on "python"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"req_update/req_update.py"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/req_update.py --version")
  end
end
