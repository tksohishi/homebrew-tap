class Seats < Formula
  desc "CLI for searching seats.aero award flight availability"
  homepage "https://github.com/tksohishi/seats"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tksohishi/seats/releases/download/v#{version}/seats-darwin-arm64"
      sha256 "82272cd1c69c2a0ea005c5af4b4700e8c1619967517c9be25ed5b2e395827b12"
    end

    on_intel do
      url "https://github.com/tksohishi/seats/releases/download/v#{version}/seats-darwin-x64"
      sha256 "f3d19e0cf2c04e8cda2e8a8c0de5916cf6d98e0e7d99ea1827ac04277c86292d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/tksohishi/seats/releases/download/v#{version}/seats-linux-x64"
      sha256 "2a13eddd2b92603b536f6c810aa6acf5dda1bf3bcce96d8c08de1938b2e3e08b"
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
