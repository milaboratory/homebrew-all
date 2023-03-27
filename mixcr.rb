class Mixcr < Formula
  desc "MiXCR is a universal software for fast and accurate analysis of T- and B- cell receptor repertoire sequencing data."
  homepage "https://docs.milaboratories.com/"
  url "https://github.com/milaboratory/mixcr/releases/download/v4.3.1/mixcr-4.3.1.zip"
  version "4.3.1-1"
  sha256 "98f9a1480df0db07189932db0095b933f4f9e5d03aa4b669fb687a4fef2609c6"

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

        For commertial use please contact licensing@milaboratories.com

    EOS
  end
end
