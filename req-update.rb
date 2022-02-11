# typed: false
# frozen_string_literal: true

# ReqUpdate is a homebrew formula for the req-update cli tool
class ReqUpdate < Formula
  desc "Automatically update your project's dependencies"
  homepage "https://github.com/albertyw/req-update"
  url "https://github.com/albertyw/req-update/archive/v2.0.0.tar.gz"
  sha256 "5e4719ff1a457df21ccf6a24c5abfaf9f56cc999100525f7d0ecbb12efb099c0"
  license "MIT"

  head "https://github.com/albertyw/req-update.git", using: :git

  depends_on "python"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"req_update/req_update.py"
  end
end
