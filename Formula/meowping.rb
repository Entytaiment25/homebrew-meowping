class Meowping < Formula
  desc "Ping utility written in Rust, focused on being size efficient and fast"
  homepage "https://github.com/Entytaiment25/meowping"
  version "2.0.22"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Entytaiment25/meowping/releases/download/2.0.22/meowping-2.0.22-aarch64-apple-darwin.tar.gz"
      sha256 "bc479d433f8ef94db9b04ede57b81561e9a7e965a67aa3224ae4a41ed497b46d"
    end
    on_intel do
      url "https://github.com/Entytaiment25/meowping/releases/download/2.0.22/meowping-2.0.22-x86_64-apple-darwin.tar.gz"
      sha256 "413738666d829d87ae7c851c7aff3d1655e746402431881b3cebf9ca8c6612f4"
    end
  end

  def install
    bin.install "meowping"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/meowping --help")
  end
end
