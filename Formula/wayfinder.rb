class Wayfinder < Formula
  desc "Travel search for your terminal and your AI agents"
  homepage "https://github.com/tksohishi/wayfinder"
  license "MIT"
  version "0.5.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tksohishi/wayfinder/releases/download/v0.5.0/wayfinder-v0.5.0-darwin-arm64.tar.gz"
      sha256 "8ca5f1b23a5458a3a229e7563ce960094aa58063ff0eaf9c584f31719481478c"
    else
      url "https://github.com/tksohishi/wayfinder/releases/download/v0.5.0/wayfinder-v0.5.0-darwin-x64.tar.gz"
      sha256 "bf840a7a60cb72b1ceaf30426be726fa1694f1632fc39a9b634096a003803dd0"
    end
  end

  def install
    bin.install "wayfinder"
  end

  test do
    assert_match "wayfinder", shell_output("#{bin}/wayfinder --help")
  end
end
