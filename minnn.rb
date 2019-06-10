class Minnn < Formula
  desc "MiNNN is a universal software for fast and accurate analysis of T- and B- cell receptor repertoire sequencing data."
  homepage "https://minnn.readthedocs.io/"
  url "https://github.com/milaboratory/minnn/releases/download/v5.0.0/minnn-5.0.0.zip"
  version "5.0.0-1"
  sha256 "8be6e6a33b60eb3546b82b6ce2cfd83aceebfbae231352d409ecb15e1b0840f5"

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
