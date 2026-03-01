class Wayfinder < Formula
  desc "Travel search for your terminal and your AI agents"
  homepage "https://github.com/tksohishi/wayfinder"
  license "MIT"
  version "0.2.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tksohishi/wayfinder/releases/download/v0.2.3/wayfinder-v0.2.3-darwin-arm64.tar.gz"
      sha256 "18536efac31e35f7028db8137c29dc297d7b616f8164d527701dc72b45046a23"
    else
      url "https://github.com/tksohishi/wayfinder/releases/download/v0.2.3/wayfinder-v0.2.3-darwin-x64.tar.gz"
      sha256 "70bfced0aac27a3ca2fbc041022f7d7a8007260db41d169eeed3229c76ff4f28"
    end
  end

  def install
    bin.install "wayfinder"
  end

  test do
    assert_match "wayfinder", shell_output("#{bin}/wayfinder --help")
  end
end
