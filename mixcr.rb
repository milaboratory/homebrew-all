class Mixcr < Formula
  # desc "MiXCR is a universal software for fast and accurate analysis of T- and B- cell receptor repertoire sequencing data."
  homepage "http://mixcr.milaboratory.com/"
  url "https://github.com/milaboratory/mixcr/releases/download/v1.7.2/mixcr-1.7.2.zip"
  version "1.7-4"
  sha256 "b521a429298f8db6f804106e967b0e263cee33e1c6758428971ef9c698f0800d"

  depends_on :java

  def install
    prefix.install Dir["*"]
    bin.install_symlink "../mixcr"
  end

  test do
    system "mixcr"
  end
end
