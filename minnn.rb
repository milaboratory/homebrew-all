class Minnn < Formula
  desc "MiNNN is a universal software for fast and accurate analysis of T- and B- cell receptor repertoire sequencing data."
  homepage "https://minnn.readthedocs.io/"
  url "https://github.com/milaboratory/minnn/releases/download/v9.1/minnn-9.1.zip"
  version "9.1-1"
  sha256 "55373207a9fff43aed8d9048ace8960fe1e46530c0728009993e9d12a5a78527"

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
