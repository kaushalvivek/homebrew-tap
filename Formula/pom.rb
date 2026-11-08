class Pom < Formula
  desc "Elegant terminal pomodoro timer"
  homepage "https://github.com/kaushalvivek/pom"
  url "https://github.com/kaushalvivek/pom/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "4e9c3faaf2e159a4f555befeeb705bcb95dbe736a858e408cbe48def07d18db3"
  license "MIT"

  depends_on "python@3"

  def install
    bin.install "pom"
  end

  test do
    assert_predicate bin/"pom", :executable?
  end
end
