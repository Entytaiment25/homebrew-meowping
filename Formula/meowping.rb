class Meowping < Formula
  desc "Ping utility written in Rust, focused on being size efficient and fast"
  homepage "https://github.com/Entytaiment25/meowping"
  version "2.0.20"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Entytaiment25/meowping/releases/download/2.0.20/meowping-2.0.20-aarch64-apple-darwin.tar.gz"
      sha256 "4a6c225843cd050ae88d126e1e7ed097060dd0c2c067b2a335bae3fcb989602f"
    end
    on_intel do
      url "https://github.com/Entytaiment25/meowping/releases/download/2.0.20/meowping-2.0.20-x86_64-apple-darwin.tar.gz"
      sha256 "06c27a4fce3fe7cc2f8f285dafbab90a299310bcc2f0b6c0c53ca9cd452e498c"
    end
  end

  def install
    bin.install "meowping"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/meowping --help")
  end
end
