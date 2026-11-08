class Hn < Formula
  desc "Interactive terminal client for Hacker News"
  homepage "https://github.com/kaushalvivek/hn-cli"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/kaushalvivek/hn-cli/releases/download/v0.3.1/hn-v0.3.1-macos-universal.tar.gz"
      sha256 "42413e67c73b2a4e3f7d471b01dd50c8fb711f09b4db9513f1e455f5fcff6d4a"
    end

    on_arm do
      url "https://github.com/kaushalvivek/hn-cli/releases/download/v0.3.1/hn-v0.3.1-macos-universal.tar.gz"
      sha256 "42413e67c73b2a4e3f7d471b01dd50c8fb711f09b4db9513f1e455f5fcff6d4a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kaushalvivek/hn-cli/releases/download/v0.3.1/hn-v0.3.1-linux-x86_64.tar.gz"
      sha256 "4abcbd3849e94f8c38634ccf2facc73e28511f27aa1b542ba0179798b6418858"
    end

    on_arm do
      url "https://github.com/kaushalvivek/hn-cli/releases/download/v0.3.1/hn-v0.3.1-linux-aarch64.tar.gz"
      sha256 "4e01559fa38269af0ecdb2c90c143be079b026ff6a8631fa32921efce1a6db25"
    end
  end

  def install
    bin.install "hn"
  end

  test do
    assert_match "0.3.1", shell_output("#{bin}/hn --version")
  end
end
