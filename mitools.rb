class Mixcr < Formula
  # desc "MiXCR is a universal software for fast and accurate analysis of T- and B- cell receptor repertoire sequencing data."
  homepage "https://github.com/milaboratory/mitools"
  url "https://github.com/milaboratory/mitools/releases/download/v1.4/mitools-1.4.zip"
  version "1.4.0-1"
  sha256 "060b5efc49b08938c42279945f5c4c35b91815f810ea2ad4b636ef90b7d3b865"

  depends_on :java

  def install
    prefix.install Dir["*"]
    bin.install_symlink "../mitools"
  end

  test do
    system "mitools"
  end
end
