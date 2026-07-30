class Meowping < Formula
  desc "Ping utility written in Rust, focused on being size efficient and fast"
  homepage "https://github.com/Entytaiment25/meowping"
  version "2.0.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Entytaiment25/meowping/releases/download/2.0.13/meowping-2.0.13-aarch64-apple-darwin.tar.gz"
      sha256 "229b8243a379055cdea15b401bcd6843311d69cd881591353589e0309d995e7e"
    end
    on_intel do
      url "https://github.com/Entytaiment25/meowping/releases/download/2.0.13/meowping-2.0.13-x86_64-apple-darwin.tar.gz"
      sha256 "84b01e3e618d0a546d0a48240eb432e50200811a7325170e749d5c11d7b93111"
    end
  end

  def install
    bin.install "meowping"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/meowping --help")
  end
end
