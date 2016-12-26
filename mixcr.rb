class Mixcr < Formula
  # desc "MiXCR is a universal software for fast and accurate analysis of T- and B- cell receptor repertoire sequencing data."
  homepage "http://mixcr.milaboratory.com/"
  url "https://github.com/milaboratory/mixcr/releases/download/v2.0.3/mixcr-2.0.3.zip"
  version "2.0.3-1"
  sha256 "df7f53599773fd99eb887edda0a9e801a58040dd5f6416afccf853a04d23390b"

  depends_on :java

  def install
    prefix.install Dir["*"]
    bin.install_symlink "../mixcr"
  end

  test do
    system "mixcr"
  end
end
