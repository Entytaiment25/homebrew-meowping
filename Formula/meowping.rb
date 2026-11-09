class Meowping < Formula
  desc "Ping utility written in Rust, focused on being size efficient and fast"
  homepage "https://github.com/Entytaiment25/meowping"
  version "2.0.21"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Entytaiment25/meowping/releases/download/2.0.21/meowping-2.0.21-aarch64-apple-darwin.tar.gz"
      sha256 "06666a3fb75c6a5eaa4979645b72e155ee7b6d90c8c4317f438a1260759f6063"
    end
    on_intel do
      url "https://github.com/Entytaiment25/meowping/releases/download/2.0.21/meowping-2.0.21-x86_64-apple-darwin.tar.gz"
      sha256 "a5101699407e023b3a4270764a7bc90ddb47f371916553f8938bf55889885c7c"
    end
  end

  def install
    bin.install "meowping"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/meowping --help")
  end
end
