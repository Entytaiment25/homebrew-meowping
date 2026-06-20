class Meowping < Formula
  desc "A flexible ping utility tool written in Rust, focused on being size efficient and fast"
  homepage "https://github.com/Entytaiment25/meowping"
  version "2.0.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Entytaiment25/meowping/releases/download/2.0.6/meowping-2.0.6-aarch64-apple-darwin.tar.gz"
      sha256 "55a48e256c38f2096224518f30849b57814c637546939c01076c61825d413995"
    end
    on_intel do
      url "https://github.com/Entytaiment25/meowping/releases/download/2.0.6/meowping-2.0.6-x86_64-apple-darwin.tar.gz"
      sha256 "471318a3ff06cd3d3cc72196a4c09af81340aa29445e4e24a492226d03d965d1"
    end
  end

  def install
    bin.install "meowping"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/meowping --version 2>&1", 1)
  end
end
