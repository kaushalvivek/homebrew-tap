class Hn < Formula
  desc "Interactive terminal client for Hacker News"
  homepage "https://github.com/kaushalvivek/hn-cli"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/kaushalvivek/hn-cli/releases/download/v0.3.0/hn-v0.3.0-macos-universal.tar.gz"
      sha256 "9f86f70b13dde65ac2177d509c381cdecd5875f051c7cca3abf9b925b9871d8c"
    end

    on_arm do
      url "https://github.com/kaushalvivek/hn-cli/releases/download/v0.3.0/hn-v0.3.0-macos-universal.tar.gz"
      sha256 "9f86f70b13dde65ac2177d509c381cdecd5875f051c7cca3abf9b925b9871d8c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kaushalvivek/hn-cli/releases/download/v0.3.0/hn-v0.3.0-linux-x86_64.tar.gz"
      sha256 "ae158318b3eef84c82d45f0fd16a58082f0d8ae1309dc91271f7918bef53d48d"
    end

    on_arm do
      url "https://github.com/kaushalvivek/hn-cli/releases/download/v0.3.0/hn-v0.3.0-linux-aarch64.tar.gz"
      sha256 "a0d54e4442978f9c23d07cdf2cd12e390ee78993fbd37449401afaa18e5f8360"
    end
  end

  def install
    bin.install "hn"
  end

  test do
    assert_match "0.3.0", shell_output("#{bin}/hn --version")
  end
end
