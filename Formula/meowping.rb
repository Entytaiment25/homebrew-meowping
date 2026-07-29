class Meowping < Formula
  desc "Ping utility written in Rust, focused on being size efficient and fast"
  homepage "https://github.com/Entytaiment25/meowping"
  version "2.0.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Entytaiment25/meowping/releases/download/2.0.12/meowping-2.0.12-aarch64-apple-darwin.tar.gz"
      sha256 "b08df2ecfee160e8030edd88a48c24c2d29e3745d9efb0d6f78102162a364894"
    end
    on_intel do
      url "https://github.com/Entytaiment25/meowping/releases/download/2.0.12/meowping-2.0.12-x86_64-apple-darwin.tar.gz"
      sha256 "9a682e6a9acf89b5e4b794ce23387f73975cf3d81cd73b1c0a971728c856e47f"
    end
  end

  def install
    bin.install "meowping"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/meowping --help")
  end
end
