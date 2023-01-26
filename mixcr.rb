class Mixcr < Formula
  desc "MiXCR is a universal software for fast and accurate analysis of T- and B- cell receptor repertoire sequencing data."
  homepage "https://docs.milaboratories.com/"
  url "https://github.com/milaboratory/mixcr/releases/download/v4.2.0/mixcr-4.2.0.zip"
  version "4.2.0-1"
  sha256 "b72515e7cf6f82424acb702b07df22f7dea5bef320f09360b9b6868fe7f43eec"

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
