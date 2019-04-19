class Minnn < Formula
  desc "MiNNN is a universal software for fast and accurate analysis of T- and B- cell receptor repertoire sequencing data."
  homepage "https://minnn.readthedocs.io/"
  url "https://github.com/milaboratory/minnn/releases/download/v4.0.1/minnn-4.0.1.zip"
  version "4.0.1-1"
  sha256 "9dc021966c05e16a0fe32eb447a607f01b264ebf4b20029097a3005e69bf0259"

  depends_on :java

  def install
    prefix.install Dir["*"]
    bin.install_symlink "../minnn"
  end

  def caveats
    <<~EOS
      License notice:

        MiNNN is free for academic and non-commercial use.
        See: https://github.com/milaboratory/minnn/blob/develop/LICENSE

        For commertial use please contact licensing@milaboratory.com

    EOS
  end

  test do
    system "minnn"
  end
end
