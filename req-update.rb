# typed: true
# frozen_string_literal: true

# ReqUpdate is a homebrew formula for the req-update cli tool
class ReqUpdate < Formula
  desc "Automatically update your project's dependencies"
  homepage "https://github.com/albertyw/req-update"
  url "https://github.com/albertyw/req-update/archive/v2.4.3.tar.gz"
  sha256 "4abff69ad4fc2bc7e1664e59a05149afe32eb954a3ce19d352ffd2f5003dad9b"
  license "MIT"

  head "https://github.com/albertyw/req-update.git", using: :git

  depends_on "python"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"req_update/req_update.py"
  end
end
