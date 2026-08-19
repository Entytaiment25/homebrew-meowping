class Meowping < Formula
  desc "Ping utility written in Rust, focused on being size efficient and fast"
  homepage "https://github.com/Entytaiment25/meowping"
  version "2.0.18"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Entytaiment25/meowping/releases/download/2.0.18/meowping-2.0.18-aarch64-apple-darwin.tar.gz"
      sha256 "99721110d6ff9f7a7b7cb18b0ced06bd744769a190cc38251e70479f05c1d723"
    end
    on_intel do
      url "https://github.com/Entytaiment25/meowping/releases/download/2.0.18/meowping-2.0.18-x86_64-apple-darwin.tar.gz"
      sha256 "43f0d9a54754366eafda9f6882073c926239ce5a9dd3ee5816acba350f2be814"
    end
  end

  def install
    bin.install "meowping"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/meowping --help")
  end
end
