class Mixcr < Formula
  # desc "MiXCR is a universal software for fast and accurate analysis of T- and B- cell receptor repertoire sequencing data."
  homepage "http://mixcr.milaboratory.com/"
  url "https://github.com/milaboratory/mixcr/releases/download/v2.0/mixcr-2.0.zip"
  version "2.0.0-3"
  sha256 "9f7190e4ffb7b78f1888fc6fa2c3bad9365b82ccb6cc1aa5c41317e81d597cb7"

  depends_on :java

  def install
    prefix.install Dir["*"]
    bin.install_symlink "../mixcr"
  end

  test do
    system "mixcr"
  end
end
