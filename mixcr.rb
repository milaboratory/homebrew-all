class Mixcr < Formula
  desc "MiXCR is a universal software for fast and accurate analysis of T- and B- cell receptor repertoire sequencing data."
  homepage "https://mixcr.readthedocs.io/"
  url "https://github.com/milaboratory/mixcr/releases/download/v2.1.10/mixcr-2.1.10.zip"
  version "2.1.10-1"
  sha256 "ca64e2adef72aaedab54d19a89529c3cbc2f2343f5154d9bfd9df892e78ba37d"

  depends_on :java

  def install
    prefix.install Dir["*"]
    bin.install_symlink "../mixcr"
  end

  def caveats
    <<~EOS
      License notice:

        MiXCR is free for academic and non-commercial use.
        See: https://github.com/milaboratory/mixcr/blob/develop/LICENSE

        For commertioal use please contact licensing@milaboratory.com

    EOS
  end

  test do
    system "mixcr"
  end
end
