class Mixcr17 < Formula
  # desc "MiXCR is a universal software for fast and accurate analysis of T- and B- cell receptor repertoire sequencing data."
  homepage "http://mixcr.milaboratory.com/"
  url "https://github.com/milaboratory/mixcr/releases/download/v1.7.4/mixcr-1.7.4.zip"
  version "1.7-6"
  sha256 "bdff9f1fe405602e25a42ff9f5ab0c7abafc739427eade346f87725483cfd990"

  depends_on :java

  def install
    prefix.install Dir["*"]
    bin.install_symlink "../mixcr"
  end

  test do
    system "mixcr"
  end
end