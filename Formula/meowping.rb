class Meowping < Formula
  desc "A flexible ping utility tool written in Rust, focused on being size efficient and fast"
  homepage "https://github.com/Entytaiment25/meowping"
  version "2.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Entytaiment25/meowping/releases/download/2.0.3/meowping-2.0.3-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER_ARM64"
    end
    on_intel do
      url "https://github.com/Entytaiment25/meowping/releases/download/2.0.3/meowping-2.0.3-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER_X86_64"
    end
  end

  def install
    bin.install "meowping"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/meowping --version 2>&1", 1)
  end
end
