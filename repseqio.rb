class Repseqio < Formula
  homepage "https://github.com/milaboratory/repseqio"
  url "https://github.com/milaboratory/repseqio/releases/download/v1.0.0/repseqio-1.0.0.zip"
  version "1.0.0-1"
  sha256 "b2993e1bfe85416244161f7da941d4cd2b5449228da1dbbf28e7ef8874a12ed4"

  depends_on :java

  def install
    prefix.install Dir["*"]
    bin.install_symlink "../repseqio"
  end

  test do
    system "repseqio"
  end
end
