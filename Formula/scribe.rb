class Scribe < Formula
  desc "On-device audio transcription CLI for macOS (SpeechAnalyzer), no length cap"
  homepage "https://github.com/tksohishi/scribe"
  url "https://github.com/tksohishi/scribe/releases/download/v0.1.0/scribe-v0.1.0-darwin-universal.tar.gz"
  sha256 "9d2f27e48ef977faa03be367546a0add4019cc065ddb96caa7582355cb358859"
  license "MIT"
  version "0.1.0"

  depends_on macos: :tahoe

  def install
    bin.install "scribe"
  end

  test do
    assert_match "scribe", shell_output("#{bin}/scribe --version")
  end
end
