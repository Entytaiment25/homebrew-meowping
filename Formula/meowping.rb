class Meowping < Formula
  desc "A flexible ping utility tool written in Rust, focused on being size efficient and fast"
  homepage "https://github.com/Entytaiment25/meowping"
  version "2.0.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Entytaiment25/meowping/releases/download/2.0.7/meowping-2.0.7-aarch64-apple-darwin.tar.gz"
      sha256 "2ce4ea11e988941f92611dff204425e8648dd623fad63a54f9ec5cc13694c2ec"
    end
    on_intel do
      url "https://github.com/Entytaiment25/meowping/releases/download/2.0.7/meowping-2.0.7-x86_64-apple-darwin.tar.gz"
      sha256 "87e3a488cc640630bfa6d9d18aa9d21879b76b09fdfd9d81ab2b62961add8972"
    end
  end

  def install
    bin.install "meowping"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/meowping --version 2>&1", 1)
  end
end
