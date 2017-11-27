class Mixcr < Formula
  # desc "MiXCR is a universal software for fast and accurate analysis of T- and B- cell receptor repertoire sequencing data."
  homepage "http://mixcr.milaboratory.com/"
  url "https://github.com/milaboratory/mixcr/releases/download/v2.1.6/mixcr-2.1.6.zip"
  version "2.1.6-1"
  sha256 "1751d74f079e5b3593e7b5c7d143026426fa7176846f1ca76501e7e15a556668"

  depends_on :java

  def install
    prefix.install Dir["*"]
    bin.install_symlink "../mixcr"
  end

  test do
    system "mixcr"
  end
end
