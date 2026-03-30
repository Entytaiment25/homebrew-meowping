class Meowping < Formula
  desc "A flexible ping utility tool written in Rust, focused on being size efficient and fast"
  homepage "https://github.com/Entytaiment25/meowping"
  version "2.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Entytaiment25/meowping/releases/download/2.0.3/meowping-2.0.3-aarch64-apple-darwin.tar.gz"
      sha256 "7e94012be1e5c51af8b8d2140f560bc5afd25a8788bbd9a9864e408f685a675d"
    end
    on_intel do
      url "https://github.com/Entytaiment25/meowping/releases/download/2.0.3/meowping-2.0.3-x86_64-apple-darwin.tar.gz"
      sha256 "147ac67ad3b37fb344d0dba45ea425b3b1a3a706bb71d24ddb00818bf132e70a"
    end
  end

  def install
    bin.install "meowping"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/meowping --version 2>&1", 1)
  end
end
