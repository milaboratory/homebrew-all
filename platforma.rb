# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Platforma < Formula
  desc "MiLaboratories Platforma server"
  homepage "https://platforma.bio/"
  version "3.0.2" # Match the version of your binaries

  on_macos do
    if Hardware::CPU.arm?
      url "https://cdn.platforma.bio/software/pl/macos/pl-#{version}-arm64.tgz"
        sha256 "b681ee1b3e3f4b2ea35f81b24fd2a90bbdaf73f5dd7db0a085aea7e97712a590"   ### ARM64 DON'T DELETE
    else # Intel
      url "https://cdn.platforma.bio/software/pl/macos/pl-#{version}-amd64.tgz"
      sha256 "93106304f7e4f309a79992878965f949c56955d5c7b524c230d9feb6194a3c92"   ### AMD64 DON'T DELETE
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
        To get the license: https://platforma.bio/getlicense
    EOS
  end
end