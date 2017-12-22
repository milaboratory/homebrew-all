class Mixcr < Formula
  # desc "MiXCR is a universal software for fast and accurate analysis of T- and B- cell receptor repertoire sequencing data."
  homepage "http://mixcr.milaboratory.com/"
  url "https://github.com/milaboratory/mixcr/releases/download/v2.1.8/mixcr-2.1.8.zip"
  version "2.1.8-1"
  sha256 "22cff4c32d850571707d7ab27674894ccb1d912610b3c5d9090bf78acaba00fd"

  depends_on :java

  def install
    prefix.install Dir["*"]
    bin.install_symlink "../mixcr"
  end

  test do
    system "mixcr"
  end
end
