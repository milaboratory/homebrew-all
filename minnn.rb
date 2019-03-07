class Minnn < Formula
  desc "MiNNN is a universal software for fast and accurate analysis of T- and B- cell receptor repertoire sequencing data."
  homepage "https://minnn.readthedocs.io/"
  url "https://github.com/milaboratory/minnn/releases/download/v3.0.0/minnn-3.0.0.zip"
  version "3.0.0-1"
  sha256 "09642530a206b7b79138ff6077f321c82ed9d17da5daeb2e741c2d1ba3f8db6a"

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
