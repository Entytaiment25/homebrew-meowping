class Meowping < Formula
  desc "A flexible ping utility tool written in Rust, focused on being size efficient and fast"
  homepage "https://github.com/Entytaiment25/meowping"
  version "2.0.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Entytaiment25/meowping/releases/download/2.0.8/meowping-2.0.8-aarch64-apple-darwin.tar.gz"
      sha256 "4ad6796bd16929dea4b743a25b204aaafcdf38e3e99bc2cd4dbc576757f1619c"
    end
    on_intel do
      url "https://github.com/Entytaiment25/meowping/releases/download/2.0.8/meowping-2.0.8-x86_64-apple-darwin.tar.gz"
      sha256 "411de4fbd4dd2e2ec2baede05bc9df1edf435340591326e6746ee10a3316df44"
    end
  end

  def install
    bin.install "meowping"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/meowping --version 2>&1", 1)
  end
end
