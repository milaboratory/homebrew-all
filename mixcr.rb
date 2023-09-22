class Mixcr < Formula
  desc "MiXCR is a universal software for fast and accurate analysis of T- and B- cell receptor repertoire sequencing data."
  homepage "https://docs.milaboratories.com/"
  url "https://github.com/milaboratory/mixcr/releases/download/v4.5.0/mixcr-4.5.0.zip"
  version "4.5.0-1"
  sha256 "4a92a61b9a87a569636c898b8c3fb56f173884d06dad5906be5a0cc6c71dfe2d"

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
