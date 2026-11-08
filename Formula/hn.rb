class Hn < Formula
  desc "Interactive terminal client for Hacker News"
  homepage "https://github.com/kaushalvivek/hn-cli"
  url "https://github.com/kaushalvivek/hn-cli/releases/download/v0.2.0/hn-v0.2.0-macos-universal.tar.gz"
  sha256 "2bd2461210e8b340cfd7a3533fe0f0b71d72f1e382e1c787e0966a594def0025"
  license "MIT"

  depends_on :macos

  def install
    bin.install "hn"
  end

  test do
    assert_match "0.2.0", shell_output("#{bin}/hn --version")
  end
end
