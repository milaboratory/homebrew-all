class Mixcr < Formula
  # desc "MiXCR is a universal software for fast and accurate analysis of T- and B- cell receptor repertoire sequencing data."
  homepage "http://mixcr.milaboratory.com/"
  url "http://files.milaboratory.com/mixcr/mixcr-1.7.1.zip"
  version "1.7.1-1"
  sha256 "3ba4b9687736ed23700cc55d243c011469e9ab43e971b59cef5f741bfcc14215"

  depends_on :java

  def install
    prefix.install Dir["*"]
    bin.install_symlink "../mixcr"
  end

  test do
    system "mixcr"
  end
end
