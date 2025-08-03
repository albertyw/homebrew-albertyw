# typed: true
# frozen_string_literal: true

# ReqUpdate is a homebrew formula for the req-update cli tool
class ReqUpdate < Formula
  desc "Automatically update your project's dependencies"
  homepage "https://github.com/albertyw/req-update"
  url "https://github.com/albertyw/req-update/archive/v2.7.5.tar.gz"
  sha256 "98abdf16556979114b0507d01932bb58baf42bf02f0a9170444ddcee42cc9838"
  license "MIT"

  head "https://github.com/albertyw/req-update.git", using: :git

  depends_on "python"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"req_update/req_update.py"
  end
end
