class Meowping < Formula
  desc "Ping utility written in Rust, focused on being size efficient and fast"
  homepage "https://github.com/Entytaiment25/meowping"
  version "2.0.17"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Entytaiment25/meowping/releases/download/2.0.17/meowping-2.0.17-aarch64-apple-darwin.tar.gz"
      sha256 "e292599ea1d9b6c290303726605ef6d761dc22b8074a7931c075cd876fdb03db"
    end
    on_intel do
      url "https://github.com/Entytaiment25/meowping/releases/download/2.0.17/meowping-2.0.17-x86_64-apple-darwin.tar.gz"
      sha256 "f404ca948ee2efba3cdb93b2cc8e7e0ad6249705a4a9364aca2abbffa212b3ef"
    end
  end

  def install
    bin.install "meowping"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/meowping --help")
  end
end
