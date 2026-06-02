class BitmexCli < Formula
  desc "Command-line interface for trading on BitMEX"
  homepage "https://github.com/BitMEX/bitmex-cli"
  version "1.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/BitMEX/bitmex-cli/releases/download/v1.0.2/bitmex-cli-aarch64-apple-darwin.tar.gz"
      sha256 "05a42c2cc87f5ba7ec56dc1b0c7f75b6c44e5d62f38b69cde441c219c4df5f12"
    end
    on_intel do
      url "https://github.com/BitMEX/bitmex-cli/releases/download/v1.0.2/bitmex-cli-x86_64-apple-darwin.tar.gz"
      sha256 "323213b90776da3dbaa54179c9f1568ce84aee488793b0b26a0e303de377132e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/BitMEX/bitmex-cli/releases/download/v1.0.2/bitmex-cli-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2d8590c189e5c01ab2a2b1e6ef05ee77353e968624d9a74a78e2e2d6383e43d8"
    end
    on_intel do
      url "https://github.com/BitMEX/bitmex-cli/releases/download/v1.0.2/bitmex-cli-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4d7a97d0ae2cc6d1a47de8fbc6b7cedbf2dfcaba523f14375d2fb48c97146970"
    end
  end

  def install
    bin.install "bitmex"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bitmex --version")
  end
end
