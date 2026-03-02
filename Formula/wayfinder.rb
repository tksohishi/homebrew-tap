class Wayfinder < Formula
  desc "Travel search for your terminal and your AI agents"
  homepage "https://github.com/tksohishi/wayfinder"
  license "MIT"
  version "0.3.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tksohishi/wayfinder/releases/download/v0.3.1/wayfinder-v0.3.1-darwin-arm64.tar.gz"
      sha256 "070a894e10351a656c804662057865b592dc8399653059a7a5588101df491fa9"
    else
      url "https://github.com/tksohishi/wayfinder/releases/download/v0.3.1/wayfinder-v0.3.1-darwin-x64.tar.gz"
      sha256 "f5b892b107252791e51a81828cd1edc3e7f00deeaeae096101309b45ce4f73d1"
    end
  end

  def install
    bin.install "wayfinder"
  end

  test do
    assert_match "wayfinder", shell_output("#{bin}/wayfinder --help")
  end
end
