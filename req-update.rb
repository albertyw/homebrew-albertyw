# typed: false
# frozen_string_literal: true

# ReqUpdate is a homebrew formula for the req-update cli tool
class ReqUpdate < Formula
  desc "Automatically update your project's dependencies"
  homepage "https://github.com/albertyw/req-update"
  url "https://github.com/albertyw/req-update/archive/v2.2.2.tar.gz"
  sha256 "0beddbd4be041b16b9bf65dc0b3f0ccd87908b4635649794c114b0e20497a6b2"
  license "MIT"

  head "https://github.com/albertyw/req-update.git", using: :git

  depends_on "python"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"req_update/req_update.py"
  end
end
