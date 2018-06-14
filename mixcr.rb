class Mixcr < Formula
  desc "MiXCR is a universal software for fast and accurate analysis of T- and B- cell receptor repertoire sequencing data."
  homepage "https://mixcr.readthedocs.io/"
  url "https://github.com/milaboratory/mixcr/releases/download/v2.1.11/mixcr-2.1.11.zip"
  version "2.1.11-1"
  sha256 "c445e693f121215e709b4adc2c8a687743b5ab654eb0090e88b4a562a8d74b20"

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
