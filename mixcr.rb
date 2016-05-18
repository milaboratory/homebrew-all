class Mixcr < Formula
  # desc "MiXCR is a universal software for fast and accurate analysis of T- and B- cell receptor repertoire sequencing data."
  homepage "http://mixcr.milaboratory.com/"
  url "https://github.com/milaboratory/mixcr/releases/download/v1.7.3/mixcr-1.7.3.zip"
  version "1.7-5"
  sha256 "e6fc3af0e5758e594f8a5d150ce7b868d68ea47e09e6127f9096e7ef6638ce40"

  depends_on :java

  def install
    prefix.install Dir["*"]
    bin.install_symlink "../mixcr"
  end

  test do
    system "mixcr"
  end
end
