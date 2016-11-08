class Mixcr < Formula
  # desc "MiXCR is a universal software for fast and accurate analysis of T- and B- cell receptor repertoire sequencing data."
  homepage "http://mixcr.milaboratory.com/"
  url "https://github.com/milaboratory/mixcr/releases/download/v2.0/mixcr-2.0.zip"
  version "2.0.1-1"
  sha256 "fe21ebef009c916501f35d517834e4c2335338d0712edd86e8f3e7ecfa250f30"

  depends_on :java

  def install
    prefix.install Dir["*"]
    bin.install_symlink "../mixcr"
  end

  test do
    system "mixcr"
  end
end
