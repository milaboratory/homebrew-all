class Minnn < Formula
  desc "MiNNN is a universal software for fast and accurate analysis of T- and B- cell receptor repertoire sequencing data."
  homepage "https://minnn.readthedocs.io/"
  url "https://github.com/milaboratory/minnn/releases/download/v7.0.0/minnn-7.0.0.zip"
  version "7.0.0-1"
  sha256 "6cf79b532b73c2418a61b5eca8a327504cd8753df14800e0693001cbe0555cfb"

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
