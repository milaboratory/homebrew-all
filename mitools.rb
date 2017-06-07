class Mitools < Formula
  homepage "https://github.com/milaboratory/mitools"
  url "https://github.com/milaboratory/mitools/releases/download/v1.5/mitools-1.5.zip"
  version "1.5.0-1"
  sha256 "23a3b20730ce5b66c3acb966b63568895385399fbc7df2f8cdc5ec2441ed0595"

  depends_on :java

  def install
    prefix.install Dir["*"]
    bin.install_symlink "../mitools"
  end

  test do
    system "mitools"
  end
end
