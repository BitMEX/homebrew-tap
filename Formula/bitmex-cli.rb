class BitmexCli < Formula
  desc "Command-line interface for trading on BitMEX"
  homepage "https://github.com/BitMEX/bitmex-cli"
  version "1.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/BitMEX/bitmex-cli/releases/download/v1.0.3/bitmex-cli-aarch64-apple-darwin.tar.gz"
      sha256 "bbbefa2c8c3a161102b892397ae352b4f22af36842b1993419803286ca16129c"
    end
    on_intel do
      url "https://github.com/BitMEX/bitmex-cli/releases/download/v1.0.3/bitmex-cli-x86_64-apple-darwin.tar.gz"
      sha256 "338409e9b4adb9006bedeed8b7f10f42729d7c616ce4cd83de022ecd332d1941"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/BitMEX/bitmex-cli/releases/download/v1.0.3/bitmex-cli-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e99008daa2d407a242dae3eb64fc965a456985455c40499751c036d176011e9f"
    end
    on_intel do
      url "https://github.com/BitMEX/bitmex-cli/releases/download/v1.0.3/bitmex-cli-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "19609ab18f6ce3c05594a185b7388372f762e8465b51a778d3f8a91d20a04100"
    end
  end

  def install
    bin.install "bitmex"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bitmex --version")
  end
end
