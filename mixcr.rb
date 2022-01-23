class Mixcr < Formula
  desc "MiXCR is a universal software for fast and accurate analysis of T- and B- cell receptor repertoire sequencing data."
  homepage "https://mixcr.readthedocs.io/"
  url "https://github.com/milaboratory/mixcr/releases/download/v3.0.13/mixcr-3.0.13.zip"
  version "3.0.13-2"
  sha256 "cb61290eb40d1ad7c649dc8f2e1ab564bab6b2e39e1a0bdd26791eee620b1a21"

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
