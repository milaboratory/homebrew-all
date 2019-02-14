class Mixcr < Formula
  desc "MiXCR is a universal software for fast and accurate analysis of T- and B- cell receptor repertoire sequencing data."
  homepage "https://mixcr.readthedocs.io/"
  url "https://github.com/milaboratory/mixcr/releases/download/v3.0.4/mixcr-3.0.4.zip"
  version "3.0.4-1"
  sha256 "6f50639190227a7cf337c567f0065ead6f5a459fa2f8084ebde937b46934f3be"

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
