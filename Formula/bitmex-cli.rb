class BitmexCli < Formula
  desc "Command-line interface for trading on BitMEX"
  homepage "https://github.com/BitMEX/bitmex-cli"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/BitMEX/bitmex-cli/releases/download/v1.0.0/bitmex-cli-aarch64-apple-darwin.tar.gz"
      sha256 "43c01266d1e541bc5191180b83fa0b3f96fcb1fadb2599a1f58ef59f0aed5c0b"
    end
    on_intel do
      url "https://github.com/BitMEX/bitmex-cli/releases/download/v1.0.0/bitmex-cli-x86_64-apple-darwin.tar.gz"
      sha256 "f01a0e83cdd470be1deb4ca1d08bd6ea6bd463a4a553068e79cc582d8b82e595"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/BitMEX/bitmex-cli/releases/download/v1.0.0/bitmex-cli-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f6b8f898f039b60a45cd4b6f5164d3eaadef58dc3b8126f50e94b086c3adb9e7"
    end
    on_intel do
      url "https://github.com/BitMEX/bitmex-cli/releases/download/v1.0.0/bitmex-cli-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0f71ac019076b5852850b1a041aa1470e079defc4df4c1cb4ba510f582932d77"
    end
  end

  def install
    bin.install "bitmex"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bitmex --version")
  end
end
