class Mixcr < Formula
  # desc "MiXCR is a universal software for fast and accurate analysis of T- and B- cell receptor repertoire sequencing data."
  homepage "http://mixcr.milaboratory.com/"
  url "https://github.com/milaboratory/mixcr/releases/download/v1.8/mixcr-1.8.zip"
  version "1.8.0-1"
  sha256 "4c899fc9695949b7794403167966b3c4d9f86a21b5e1f8fb8e6cc8ac13b496c9"

  depends_on :java

  def install
    prefix.install Dir["*"]
    bin.install_symlink "../mixcr"
  end

  test do
    system "mixcr"
  end
end
