class Meowping < Formula
  desc "Ping utility written in Rust, focused on being size efficient and fast"
  homepage "https://github.com/Entytaiment25/meowping"
  version "2.0.23"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Entytaiment25/meowping/releases/download/2.0.23/meowping-2.0.23-aarch64-apple-darwin.tar.gz"
      sha256 "f7526058bfd0e97f6f98e74510ed4bdb50b49be0ce32f9f796c6aed12e4c5f6a"
    end
    on_intel do
      url "https://github.com/Entytaiment25/meowping/releases/download/2.0.23/meowping-2.0.23-x86_64-apple-darwin.tar.gz"
      sha256 "63c8c31e94df7dc04d289c770b94f78781a8cc957170051c3a261e1bb361c437"
    end
  end

  def install
    bin.install "meowping"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/meowping --help")
  end
end
