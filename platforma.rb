# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Platforma < Formula
  desc "MiLaboratories Platforma server"
  homepage "https://platforma.bio/"
  version "1.36.3" # Match the version of your binaries
  arch arm: "arm64", intel: "amd64"

  on_macos do
    if Hardware::CPU.arm?
      url "https://cdn.platforma.bio/software/pl/macos/pl-#{version}-#{arch}.tgz"
      sha256 "143d48e1c1e238f122050b9a1bc3e0ae2b8b925052766f6028b8fa5db7ad9c7b"   ### ARM64 DON'T DELETE
    else # Intel
      url "https://cdn.platforma.bio/software/pl/macos/pl-#{version}-#{arch}.tgz"
      sha256 "688dbb3ba4e8c6f86fd1c2039c6f14143407bb595f2ba6082844ab1a8cdf446a"   ### AMD64 DON'T DELETE
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