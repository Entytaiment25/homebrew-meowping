class Meowping < Formula
  desc "Ping utility written in Rust, focused on being size efficient and fast"
  homepage "https://github.com/Entytaiment25/meowping"
  version "2.0.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Entytaiment25/meowping/releases/download/2.0.9/meowping-2.0.9-aarch64-apple-darwin.tar.gz"
      sha256 "25619f026572c6957099494671ecb257e4d8d28acb879dba957567947041617d"
    end
    on_intel do
      url "https://github.com/Entytaiment25/meowping/releases/download/2.0.9/meowping-2.0.9-x86_64-apple-darwin.tar.gz"
      sha256 "83838e9c2430b33caa108b5ac9e4da84f440d6ea03193ab10a99cd126efa02d4"
    end
  end

  def install
    bin.install "meowping"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/meowping --help")
  end
end
