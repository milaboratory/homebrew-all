class Mixcr < Formula
  # desc "MiXCR is a universal software for fast and accurate analysis of T- and B- cell receptor repertoire sequencing data."
  homepage "http://mixcr.milaboratory.com/"
  url "http://files.milaboratory.com/mixcr/mixcr-1.7.zip"
  version "1.7"
  sha256 "2e595459e47b53d5f344dcb1f634724da82f64491dbbf73bcf90b22f973b9e54"

  depends_on :java

  def install
    prefix.install Dir["*"]
    bin.install_symlink "../mixcr"
  end

  test do
    system "mixcr"
  end
end
