class Seats < Formula
  desc "CLI for searching seats.aero award flight availability"
  homepage "https://github.com/tksohishi/seats"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tksohishi/seats/releases/download/v#{version}/seats-darwin-arm64"
      sha256 "1fee412cddad26f187655c5077cabdb1239baa3767f37235184ea95bcd1fd7b3"
    end

    on_intel do
      url "https://github.com/tksohishi/seats/releases/download/v#{version}/seats-darwin-x64"
      sha256 "96dede799cc42bef1f7c90765f042f5e4c53adb3bb3d4b7767d0834f2b3231b5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/tksohishi/seats/releases/download/v#{version}/seats-linux-x64"
      sha256 "5d3ad772fecf257edda3d19eae6d8c2efcaf2730d295fbec3eb9f75abafd6b83"
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
