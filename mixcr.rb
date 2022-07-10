class Mixcr < Formula
  desc "MiXCR is a universal software for fast and accurate analysis of T- and B- cell receptor repertoire sequencing data."
  homepage "https://mixcr.readthedocs.io/"
  url "https://github.com/milaboratory/mixcr/releases/download/v4.0.0/mixcr-4.0.0.zip"
  version "4.0.0-1"
  sha256 "b0d18a30399c39c721eb88aa64a1df77882b4f23f017cba0bf02f12154954d24"

  # depends_on "openjdk@11"

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
