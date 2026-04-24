class Wayfinder < Formula
  desc "Travel search for your terminal and your AI agents"
  homepage "https://github.com/tksohishi/wayfinder"
  license "MIT"
  version "0.6.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tksohishi/wayfinder/releases/download/v0.6.0/wayfinder-v0.6.0-darwin-arm64.tar.gz"
      sha256 "d562f87a53e629cf37b19dd958a4e84c7416f2d68e8137fb121c7ab9a1ffe22c"
    else
      url "https://github.com/tksohishi/wayfinder/releases/download/v0.6.0/wayfinder-v0.6.0-darwin-x64.tar.gz"
      sha256 "aebed586bf66a7b5d4fd15efd7674561af0e4411cebed1dd64e794915e6a7fd1"
    end
  end

  def install
    bin.install "wayfinder"
  end

  test do
    assert_match "wayfinder", shell_output("#{bin}/wayfinder --help")
  end
end
