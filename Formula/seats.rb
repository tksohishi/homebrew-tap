class Seats < Formula
  desc "CLI for searching seats.aero award flight availability"
  homepage "https://github.com/tksohishi/seats"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tksohishi/seats/releases/download/v#{version}/seats-darwin-arm64"
      sha256 "8a43344b546f2bbb31f8b582acb584c610e060a27176d8107bb610320b16ce80"
    end

    on_intel do
      url "https://github.com/tksohishi/seats/releases/download/v#{version}/seats-darwin-x64"
      sha256 "4d7ac26e69bef1852e005f4c8daffe79f41a943f1d24d4f06a8d7e7b7da2c578"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/tksohishi/seats/releases/download/v#{version}/seats-linux-x64"
      sha256 "fba02694c89e465107556aa74eb07db27c4794f6dd1d6211ba4384310c08d0ce"
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
