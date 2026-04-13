class Seats < Formula
  desc "CLI for searching seats.aero award flight availability"
  homepage "https://github.com/tksohishi/seats"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tksohishi/seats/releases/download/v#{version}/seats-darwin-arm64"
      sha256 "d91e846b1e05c33bb94f184d68117f561ec1e9d1ceb9cf2dd6b3aa803ab05041"
    end

    on_intel do
      url "https://github.com/tksohishi/seats/releases/download/v#{version}/seats-darwin-x64"
      sha256 "1758757d99cbe7ef72a768aa52c5045b8f5cc09b90950372eb0744204bd393de"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/tksohishi/seats/releases/download/v#{version}/seats-linux-x64"
      sha256 "85371cc39e012a755924d2430d272d1eea3cafba83ab70c5d0d6d65f9cb83bbc"
    end
  end

  def install
    binary = Dir["seats-*"].first || "seats"
    bin.install binary => "seats"
  end

  test do
    assert_match "seats CLI", shell_output("#{bin}/seats --help")
  end
end
