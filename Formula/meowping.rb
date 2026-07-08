class Meowping < Formula
  desc "Ping utility written in Rust, focused on being size efficient and fast"
  homepage "https://github.com/Entytaiment25/meowping"
  version "2.0.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Entytaiment25/meowping/releases/download/2.0.9/meowping-2.0.9-aarch64-apple-darwin.tar.gz"
      sha256 "00ef8e31ab807d5278123f7a5718f846d7a357891719a4e1efe51e433512ca3f"
    end
    on_intel do
      url "https://github.com/Entytaiment25/meowping/releases/download/2.0.9/meowping-2.0.9-x86_64-apple-darwin.tar.gz"
      sha256 "a85d30f24146f9ea7152486e028d99e863fdba940b8dee28a8e472f5b620d2f4"
    end
  end

  def install
    bin.install "meowping"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/meowping --help")
  end
end
