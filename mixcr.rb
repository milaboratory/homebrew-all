class Mixcr < Formula
  # desc "MiXCR is a universal software for fast and accurate analysis of T- and B- cell receptor repertoire sequencing data."
  homepage "http://mixcr.milaboratory.com/"
  url "https://github.com/milaboratory/mixcr/releases/download/v2.1/mixcr-2.1.zip"
  version "2.1-1"
  sha256 "16d2484c12edf54f7ef87a87aea1f76535a66ac0ce3ecfc2ad5f374240eecdfe"

  depends_on :java

  def install
    prefix.install Dir["*"]
    bin.install_symlink "../mixcr"
  end

  test do
    system "mixcr"
  end
end
