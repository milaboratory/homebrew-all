class Mixcr < Formula
  # desc "MiXCR is a universal software for fast and accurate analysis of T- and B- cell receptor repertoire sequencing data."
  homepage "http://mixcr.milaboratory.com/"
  url "https://github.com/milaboratory/mixcr/releases/download/v2.1.7/mixcr-2.1.7.zip"
  version "2.1.7-1"
  sha256 "20a22250a03c568d6759c16b9b2fb6dd189806516b02c4d22ace2ff10304d8eb"

  depends_on :java

  def install
    prefix.install Dir["*"]
    bin.install_symlink "../mixcr"
  end

  test do
    system "mixcr"
  end
end
