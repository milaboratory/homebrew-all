# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Pl < Formula
  desc "MiLaboratories Platforma server"
  homepage "https://platforma.bio/"
  version "1.35.5" # Match the version of your binaries

  on_macos do
    if Hardware::CPU.arm?
      url "https://cdn.platforma.bio/software/pl/macos/pl-1.35.5-arm64.tgz"
      sha256 "e43b4659fec254ef7db6da7bea02780c4a974aee5d4aa0ab3b0364f909f51647"
    else # Intel
      url "https://cdn.platforma.bio/software/pl/macos/pl-1.35.5-amd64.tgz"
      sha256 "d859ea1948e4aedb5c22d8f6e4bc0247a3041e398017f2809d3ba2bb674ccb20"
    end
  end

  def install
    # Assuming the tarball extracts directly to the 'pl' binary
    # If it extracts to a folder, you might need: bin.install "extracted_folder/pl"
    bin.install "binaries/platforma"
  end

  test do
    # Add a simple test to ensure the binary works, e.g.,
    # system "#{bin}/pl", "--version"
    # or system "#{bin}/pl", "help"
    # Replace with an actual command that works with your binary
    system "#{bin}/platforma", "--version"
  end
end