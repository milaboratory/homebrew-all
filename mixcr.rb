class Mixcr < Formula
  # desc "MiXCR is a universal software for fast and accurate analysis of T- and B- cell receptor repertoire sequencing data."
  homepage "http://mixcr.milaboratory.com/"
  url "https://github.com/milaboratory/mixcr/releases/download/v2.0.4/mixcr-2.0.4.zip"
  version "2.0.4-1"
  sha256 "d80b8806e296c27701f9da21b140dfeb356ac18b076514c780153c24b9309fab"

  depends_on :java

  def install
    prefix.install Dir["*"]
    bin.install_symlink "../mixcr"
  end

  test do
    system "mixcr"
  end
end
