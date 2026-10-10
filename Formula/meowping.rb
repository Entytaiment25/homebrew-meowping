class Meowping < Formula
  desc "Ping utility written in Rust, focused on being size efficient and fast"
  homepage "https://github.com/Entytaiment25/meowping"
  version "2.0.19"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Entytaiment25/meowping/releases/download/2.0.19/meowping-2.0.19-aarch64-apple-darwin.tar.gz"
      sha256 "04f4ff0f28957bfaa09bab6f96ee4628f1d862f6857afc0c8784038598a6955a"
    end
    on_intel do
      url "https://github.com/Entytaiment25/meowping/releases/download/2.0.19/meowping-2.0.19-x86_64-apple-darwin.tar.gz"
      sha256 "ffc26520a1681d4bb828c38fbd736cef2f92e1c31e497c3284e607aae29d3d31"
    end
  end

  def install
    bin.install "meowping"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/meowping --help")
  end
end
