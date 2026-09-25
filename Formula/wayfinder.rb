class Wayfinder < Formula
  desc "Travel search for your terminal and your AI agents"
  homepage "https://github.com/tksohishi/wayfinder"
  license "MIT"
  version "0.7.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tksohishi/wayfinder/releases/download/v0.7.0/wayfinder-v0.7.0-darwin-arm64.tar.gz"
      sha256 "5bc4f395448aa96aa1defc0b878418f90b7fbb6859c645ee62c2f64dcc528e08"
    else
      url "https://github.com/tksohishi/wayfinder/releases/download/v0.7.0/wayfinder-v0.7.0-darwin-x64.tar.gz"
      sha256 "c7e7187bcaad2a37485de6696b15d10657be458172212ed82b31fabdb743d593"
    end
  end

  def install
    bin.install "wayfinder"
  end

  test do
    assert_match "wayfinder", shell_output("#{bin}/wayfinder --help")
  end
end
