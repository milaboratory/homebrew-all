# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Platforma < Formula
  desc "MiLaboratories Platforma server"
  homepage "https://platforma.bio/"
  version "1.36.2" # Match the version of your binaries

  on_macos do
    if Hardware::CPU.arm?
      url "https://cdn.platforma.bio/software/pl/macos/pl-1.36.2-arm64.tgz"
      sha256 "45347e5db0bf4fe1d8d39760fc562662b2c47e30ac94399eca971c1a6113c867"
    else # Intel
      url "https://cdn.platforma.bio/software/pl/macos/pl-1.36.2-amd64.tgz"
      sha256 "9f3951f7384637adc1e9e27eed3208b6edb4535b89261a32a7e2e77c7b08bed9"
    end
  end

  def install

    # Install all files from the extracted archive into the formula's prefix directory.
    # This ensures the entire directory structure of your app, including the 'libs/' folder,
    # is preserved exactly as it is in the downloaded archive.
    prefix.install Dir["*"]

    # Create symbolic links for the main executables into Homebrew's bin directory.
    # This makes them directly accessible in the user's PATH environment variable.
    bin.install_symlink "../platforma"
    bin.install_symlink "../free-port"
    bin.install_symlink "../pl-api-mock"
    bin.install_symlink "../pl-db-cli"

    # Resign the dynamic libraries if needed
    Dir["#{prefix}/**/*"].each do |f|
      if `file "#{f}"`.include?("Mach-O")
        system "codesign", "--force", "--deep", "--sign", "-", f
      end
    end
  end

  test do
    # Add a simple test to ensure the binary works
    system "#{bin}/platforma", "--version"
  end

  def caveats
    <<~EOS
      License notice:

        Platforma is free for academic use. For commercial use you have to buy a license.

        See: https://github.com/milaboratory/mixcr/blob/develop/LICENSE
        To get the license: https://licensing.milaboratories.com/
    EOS
  end
end