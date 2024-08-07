class Mixcr < Formula
  desc "MiXCR is a universal software for fast and accurate analysis of T- and B- cell receptor repertoire sequencing data."
  homepage "https://docs.milaboratories.com/"
  url "https://github.com/milaboratory/mixcr/releases/download/v4.7.0/mixcr-4.7.0.zip"
  version "4.7.0-1"
  sha256 "4fde83750f1d1308ba6b7431bcafe98297b361da7e17efc4d072ed935045cac7"

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
