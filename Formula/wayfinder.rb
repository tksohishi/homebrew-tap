class Wayfinder < Formula
  desc "Travel search for your terminal and your AI agents"
  homepage "https://github.com/tksohishi/wayfinder"
  license "MIT"
  version "0.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tksohishi/wayfinder/releases/download/v0.4.0/wayfinder-v0.4.0-darwin-arm64.tar.gz"
      sha256 "3750499c2c9f3dbdd1f8f434560a27c2a8dc7bf13c39d4457761f6499e37aa0d"
    else
      url "https://github.com/tksohishi/wayfinder/releases/download/v0.4.0/wayfinder-v0.4.0-darwin-x64.tar.gz"
      sha256 "81ce606b6d01f2ce98a2d8a0585c920016aee594e4273482f5667afcae209ec8"
    end
  end

  def install
    bin.install "wayfinder"
  end

  test do
    assert_match "wayfinder", shell_output("#{bin}/wayfinder --help")
  end
end
