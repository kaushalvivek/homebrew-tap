class Hn < Formula
  desc "Interactive terminal client for Hacker News"
  homepage "https://github.com/kaushalvivek/hn-cli"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/kaushalvivek/hn-cli/releases/download/v0.4.0/hn-v0.4.0-macos-universal.tar.gz"
      sha256 "cc4e97f0b8bb39e2c48a6f5e4d0f16245eeaebd91e88506bc343eac4ee042b6a"
    end

    on_arm do
      url "https://github.com/kaushalvivek/hn-cli/releases/download/v0.4.0/hn-v0.4.0-macos-universal.tar.gz"
      sha256 "cc4e97f0b8bb39e2c48a6f5e4d0f16245eeaebd91e88506bc343eac4ee042b6a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kaushalvivek/hn-cli/releases/download/v0.4.0/hn-v0.4.0-linux-x86_64.tar.gz"
      sha256 "cfc109ca7c13211f4baea1f5297b6130c1abdfd0b34f6ff36ae5663ba1662563"
    end

    on_arm do
      url "https://github.com/kaushalvivek/hn-cli/releases/download/v0.4.0/hn-v0.4.0-linux-aarch64.tar.gz"
      sha256 "84de247117a7d6ab58e092e4f6cf5c694c18de8c2f98fc8467df27cf872e704f"
    end
  end

  def install
    bin.install "hn"
  end

  test do
    assert_match "0.4.0", shell_output("#{bin}/hn --version")
  end
end
