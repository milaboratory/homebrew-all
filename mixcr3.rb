class Mixcr3 < Formula
  desc "MiXCR is a universal software for fast and accurate analysis of T- and B- cell receptor repertoire sequencing data."
  homepage "https://mixcr.readthedocs.io/"
  url "https://github.com/milaboratory/mixcr/releases/download/v3.0.2/mixcr-3.0.2.zip"
  version "3.0.2-1"
  sha256 "b4dcad985053438d5f5590555f399edfbd8cb514e1b9717620ee0ad0b5eb6b33"

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

        For commertial use please contact licensing@milaboratory.com

    EOS
  end

  test do
    system "mixcr"
  end
end
