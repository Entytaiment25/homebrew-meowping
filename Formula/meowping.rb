class Meowping < Formula
  desc "A flexible ping utility tool written in Rust, focused on being size efficient and fast"
  homepage "https://github.com/Entytaiment25/meowping"
  version "2.0.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Entytaiment25/meowping/releases/download/2.0.4/meowping-2.0.4-aarch64-apple-darwin.tar.gz"
      sha256 "bb9334f78c49573b293a4f91bbeace1781d69d28872a6496405beb38740ab582"
    end
    on_intel do
      url "https://github.com/Entytaiment25/meowping/releases/download/2.0.4/meowping-2.0.4-x86_64-apple-darwin.tar.gz"
      sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
    end
  end

  def install
    bin.install "meowping"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/meowping --version 2>&1", 1)
  end
end
