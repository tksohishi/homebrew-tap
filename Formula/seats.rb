class Seats < Formula
  desc "CLI for searching seats.aero award flight availability"
  homepage "https://github.com/tksohishi/seats"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tksohishi/seats/releases/download/v#{version}/seats-darwin-arm64"
      sha256 "5a84d0d109ca40f14af2bda1b7bedcc458bdd8206e28364a422ddf7236cb0ef0"
    end

    on_intel do
      url "https://github.com/tksohishi/seats/releases/download/v#{version}/seats-darwin-x64"
      sha256 "5f3c7f1f628a2300ddf2402b1866f716659b4e034f7934a28ed3a64db840af56"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/tksohishi/seats/releases/download/v#{version}/seats-linux-x64"
      sha256 "d3e80c7fcad19016bcc6df855e9755598cabe1dbb49c701cfb021435fec314f4"
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
