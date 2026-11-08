class Hn < Formula
  desc "Interactive terminal client for Hacker News"
  homepage "https://github.com/kaushalvivek/hn-cli"
  url "https://github.com/kaushalvivek/hn-cli/releases/download/v0.2.1/hn-v0.2.1-macos-universal.tar.gz"
  sha256 "d964222b56c70d63ec12b46f503cc364a7d59c643dc15253507a439f34f9760e"
  license "MIT"

  depends_on :macos

  def install
    bin.install "hn"
  end

  test do
    assert_match "0.2.1", shell_output("#{bin}/hn --version")
  end
end
