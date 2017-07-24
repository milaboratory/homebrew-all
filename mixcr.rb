class Mixcr < Formula
  # desc "MiXCR is a universal software for fast and accurate analysis of T- and B- cell receptor repertoire sequencing data."
  homepage "http://mixcr.milaboratory.com/"
  url "https://github.com/milaboratory/mixcr/releases/download/v2.1.5/mixcr-2.1.5.zip"
  version "2.1.5-1"
  sha256 "8e905c542cc632efc0f0dd1188fef56286375dfc0eb2abc4626b510e247c14c3"

  depends_on :java

  def install
    prefix.install Dir["*"]
    bin.install_symlink "../mixcr"
  end

  test do
    system "mixcr"
  end
end
