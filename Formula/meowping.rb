class Meowping < Formula
  desc "Ping utility written in Rust, focused on being size efficient and fast"
  homepage "https://github.com/Entytaiment25/meowping"
  version "2.0.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Entytaiment25/meowping/releases/download/2.0.15/meowping-2.0.15-aarch64-apple-darwin.tar.gz"
      sha256 "7b36795ed41c124fc4194190376aefb3f1f377a2fd854869db38dadb8e28f85e"
    end
    on_intel do
      url "https://github.com/Entytaiment25/meowping/releases/download/2.0.15/meowping-2.0.15-x86_64-apple-darwin.tar.gz"
      sha256 "c2cfb9186b44d1e5e23890e6552fb774f7c9a6ff1067006ac9632b9008af896d"
    end
  end

  def install
    bin.install "meowping"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/meowping --help")
  end
end
