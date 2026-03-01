class Wayfinder < Formula
  desc "Travel search for your terminal and your AI agents"
  homepage "https://github.com/tksohishi/wayfinder"
  license "MIT"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tksohishi/wayfinder/releases/download/v0.3.0/wayfinder-v0.3.0-darwin-arm64.tar.gz"
      sha256 "83471e2f616387a60ca4f3b466f204836a095c4d793f793638c5f1b5f2f24ec6"
    else
      url "https://github.com/tksohishi/wayfinder/releases/download/v0.3.0/wayfinder-v0.3.0-darwin-x64.tar.gz"
      sha256 "ae0273b67e6f182b8de030b5db3bcd23cf68d5a619fc404373d366f08b0b1e83"
    end
  end

  def install
    bin.install "wayfinder"
  end

  test do
    assert_match "wayfinder", shell_output("#{bin}/wayfinder --help")
  end
end
