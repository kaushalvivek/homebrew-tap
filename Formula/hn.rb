class Hn < Formula
  desc "Interactive terminal client for Hacker News"
  homepage "https://github.com/kaushalvivek/hn-cli"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/kaushalvivek/hn-cli/releases/download/v0.4.2/hn-v0.4.2-macos-universal.tar.gz"
      sha256 "ee202f1cf7d495c79d750b8039499804665f3100aeefb07a3f7ba77450d2ec92"
    end

    on_arm do
      url "https://github.com/kaushalvivek/hn-cli/releases/download/v0.4.2/hn-v0.4.2-macos-universal.tar.gz"
      sha256 "ee202f1cf7d495c79d750b8039499804665f3100aeefb07a3f7ba77450d2ec92"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kaushalvivek/hn-cli/releases/download/v0.4.2/hn-v0.4.2-linux-x86_64.tar.gz"
      sha256 "c86d2c3ea9cc9b9bb35e75e2cdcd2f4c5e530ba299cf9b6fa8c6bbcb90ea239b"
    end

    on_arm do
      url "https://github.com/kaushalvivek/hn-cli/releases/download/v0.4.2/hn-v0.4.2-linux-aarch64.tar.gz"
      sha256 "ab26a2f9f5bbbc20b64d8d0be9245e340de4570fad63c5175eb268156521a6cf"
    end
  end

  def install
    bin.install "hn"
  end

  test do
    assert_match "0.4.2", shell_output("#{bin}/hn --version")
  end
end
