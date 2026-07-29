class Meowping < Formula
  desc "Ping utility written in Rust, focused on being size efficient and fast"
  homepage "https://github.com/Entytaiment25/meowping"
  version "2.0.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Entytaiment25/meowping/releases/download/2.0.11/meowping-2.0.11-aarch64-apple-darwin.tar.gz"
      sha256 "529f1f6c5e91b98aff37f15c2de3191d3a164afdcfce67b2844318dce8178b1a"
    end
    on_intel do
      url "https://github.com/Entytaiment25/meowping/releases/download/2.0.11/meowping-2.0.11-x86_64-apple-darwin.tar.gz"
      sha256 "761c63738666cecc03d2dfd3f4055422ea27800df3dbe43224c30323ed1025fc"
    end
  end

  def install
    bin.install "meowping"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/meowping --help")
  end
end
