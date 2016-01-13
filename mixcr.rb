class Mixcr < Formula
  # desc "MiXCR is a universal software for fast and accurate analysis of T- and B- cell receptor repertoire sequencing data."
  homepage "http://mixcr.milaboratory.com/"
  url "http://files.milaboratory.com/mixcr/mixcr-1.7.zip"
  version "1.7-2"
  sha256 "1a7eb47ebf2c6215e98ea03e088d4d407a4fb04808090e6cbf30aabb9ba19dae"

  depends_on :java

  def install
    prefix.install Dir["*"]
    bin.install_symlink "../mixcr"
  end

  test do
    system "mixcr"
  end
end
