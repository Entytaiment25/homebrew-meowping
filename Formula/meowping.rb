class Meowping < Formula
  desc "Ping utility written in Rust, focused on being size efficient and fast"
  homepage "https://github.com/Entytaiment25/meowping"
  version "2.0.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Entytaiment25/meowping/releases/download/2.0.14/meowping-2.0.14-aarch64-apple-darwin.tar.gz"
      sha256 "c2a027f0c44397f1870ce5fde0e5de602cbaadfd16f06fe7f16a3ca9457a9402"
    end
    on_intel do
      url "https://github.com/Entytaiment25/meowping/releases/download/2.0.14/meowping-2.0.14-x86_64-apple-darwin.tar.gz"
      sha256 "68c839048679220da866c4277b0ab27193b06dbef4a5d93b9f3c699133955515"
    end
  end

  def install
    bin.install "meowping"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/meowping --help")
  end
end
