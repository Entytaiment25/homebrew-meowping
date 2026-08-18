class Meowping < Formula
  desc "Ping utility written in Rust, focused on being size efficient and fast"
  homepage "https://github.com/Entytaiment25/meowping"
  version "2.0.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Entytaiment25/meowping/releases/download/2.0.16/meowping-2.0.16-aarch64-apple-darwin.tar.gz"
      sha256 "6da9f75e32523db2ae2352b56f2f8d87b75de52b159b797f75decbf6a79f803a"
    end
    on_intel do
      url "https://github.com/Entytaiment25/meowping/releases/download/2.0.16/meowping-2.0.16-x86_64-apple-darwin.tar.gz"
      sha256 "ea72efe25604bfdef080b16b085d20204d310cf5eb4423ea627e8f1c1c6d2bd0"
    end
  end

  def install
    bin.install "meowping"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/meowping --help")
  end
end
