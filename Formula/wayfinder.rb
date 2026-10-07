class Wayfinder < Formula
  desc "Travel search for your terminal and your AI agents"
  homepage "https://github.com/tksohishi/wayfinder"
  license "MIT"
  version "0.7.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tksohishi/wayfinder/releases/download/v0.7.1/wayfinder-v0.7.1-darwin-arm64.tar.gz"
      sha256 "ad7929aade44f66fd5f82bf7e92a75aef957f35385b1378581a4336056d87a88"
    else
      url "https://github.com/tksohishi/wayfinder/releases/download/v0.7.1/wayfinder-v0.7.1-darwin-x64.tar.gz"
      sha256 "085401965e480d686dfb7b5d51d1875cb6cec71de66d114e44e8bac0a70c61ab"
    end
  end

  def install
    bin.install "wayfinder"
  end

  test do
    assert_match "wayfinder", shell_output("#{bin}/wayfinder --help")
  end
end
