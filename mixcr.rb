class Mixcr < Formula
  # desc "MiXCR is a universal software for fast and accurate analysis of T- and B- cell receptor repertoire sequencing data."
  homepage "http://mixcr.milaboratory.com/"
  url "https://github.com/milaboratory/mixcr/releases/download/v1.8.2/mixcr-1.8.2.zip"
  version "1.8.2-1"
  sha256 "e2fe62d48cc38fcacc403eb065944d7b324d452c5e22eed2f3155e76ca9f8105"

  depends_on :java

  def install
    prefix.install Dir["*"]
    bin.install_symlink "../mixcr"
  end

  test do
    system "mixcr"
  end
end
