class Mixcr < Formula
  desc "MiXCR is a universal software for fast and accurate analysis of T- and B- cell receptor repertoire sequencing data."
  homepage "https://docs.milaboratories.com/"
  url "https://github.com/milaboratory/mixcr/releases/download/v4.3.0/mixcr-4.3.0.zip"
  version "4.3.0-1"
  sha256 "76c17d9f66b423c6d2335b1597cbd5893b08952354be431a4c9a1034c5c3ca0c"

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

  test do
    system "mixcr"
  end
end
