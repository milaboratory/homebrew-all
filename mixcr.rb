class Mixcr < Formula
  # desc "MiXCR is a universal software for fast and accurate analysis of T- and B- cell receptor repertoire sequencing data."
  homepage "http://mixcr.milaboratory.com/"
  url "https://github.com/milaboratory/mixcr/releases/download/v2.1.4/mixcr-2.1.4.zip"
  version "2.1.4-1"
  sha256 "80af489badcb2567fd9644cf8a616d182009c333fc1977c2ce74ef1343aa9de8"

  depends_on :java

  def install
    prefix.install Dir["*"]
    bin.install_symlink "../mixcr"
  end

  test do
    system "mixcr"
  end
end
