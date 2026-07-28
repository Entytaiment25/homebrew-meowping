class Meowping < Formula
  desc "Ping utility written in Rust, focused on being size efficient and fast"
  homepage "https://github.com/Entytaiment25/meowping"
  version "2.0.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Entytaiment25/meowping/releases/download/2.0.10/meowping-2.0.10-aarch64-apple-darwin.tar.gz"
      sha256 "08d7fcbe01f9266b24cba077f54d7222edfbfa16d2a7e6e37dfff2a96b02ac9d"
    end
    on_intel do
      url "https://github.com/Entytaiment25/meowping/releases/download/2.0.10/meowping-2.0.10-x86_64-apple-darwin.tar.gz"
      sha256 "7c6bbc00527b6e2197380ce32f1d54f343b130074aacf0dd7dee4c58da11dceb"
    end
  end

  def install
    bin.install "meowping"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/meowping --help")
  end
end
