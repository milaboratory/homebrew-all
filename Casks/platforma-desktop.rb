cask "platforma-desktop" do
  version "1.21.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://cdn.platforma.bio/software/platforma-desktop-v2/macos/arm64/Platforma-#{version}-arm64.dmg"
      sha256 "9a7adae1ea9ed512fc9f475bbc44eabcca93684d64b0a5c1fa1a0abd214c6b76"
    else
      url "https://cdn.platforma.bio/software/platforma-desktop-v2/macos/amd64/Platforma-#{version}.dmg"
      sha256 "intel_mac_sha256_placeholder"
    end
    app "Platforma.app"
  end
  
  name "platforma"
  desc "Platforma is a system for efficient biological data analysis and management. It consists of two main components: the Desktop application, that provides users with intuitive interface for working with various biological software, and server-side backend service, that orchestrates all data, software, containers and analysis operations."
  homepage "https://platforma.bio"

end