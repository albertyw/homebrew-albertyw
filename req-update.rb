# typed: true
# frozen_string_literal: true

# ReqUpdate is a homebrew formula for the req-update cli tool
class ReqUpdate < Formula
  desc "Automatically update your project's dependencies"
  homepage "https://github.com/albertyw/req-update"
  url "https://github.com/albertyw/req-update/archive/v2.7.1.tar.gz"
  sha256 "20d92362740b42c826e4cce7dcd7fbd77c0edf8fcf9b807bfbcd466cf36da71f"
  license "MIT"

  head "https://github.com/albertyw/req-update.git", using: :git

  depends_on "python"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"req_update/req_update.py"
  end
end
