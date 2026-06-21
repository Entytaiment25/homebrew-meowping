class Meowping < Formula
  desc "A flexible ping utility tool written in Rust, focused on being size efficient and fast"
  homepage "https://github.com/Entytaiment25/meowping"
  version "2.0.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Entytaiment25/meowping/releases/download/2.0.7/meowping-2.0.7-aarch64-apple-darwin.tar.gz"
      sha256 "22f795a3e3b48db224b098eecfbdccc36292019325fc52b1f6ee75c92c99c804"
    end
    on_intel do
      url "https://github.com/Entytaiment25/meowping/releases/download/2.0.7/meowping-2.0.7-x86_64-apple-darwin.tar.gz"
      sha256 "9a868d7a752e9e6f67d900ff9b7b17f71209e415859996b8ef5fb502b206b4dd"
    end
  end

  def install
    bin.install "meowping"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/meowping --version 2>&1", 1)
  end
end
