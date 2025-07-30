cask "platforma-desktop" do
  version "1.21.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://cdn.platforma.bio/software/platforma-desktop-v2/macos/arm64/Platforma-#{version}-arm64.dmg"
      sha256 "9e851c4b40df49cf2f1ef661d4f5dc39d22b52142216960aaa4d1426951e698d"   ### ARM64 DON'T DELETE
    else
      url "https://cdn.platforma.bio/software/platforma-desktop-v2/macos/amd64/Platforma-#{version}.dmg"
      sha256 "90e5d8cb145c363b5514be1f5f85380bb793549de08c84b3757dc878c16fd3b4"   ### AMD64 DON'T DELETE
    end
  app "Platforma.app"
  end
  
  name "platforma"
  desc "Platforma is a system for efficient biological data analysis and management. It consists of two main components: the Desktop application, that provides users with intuitive interface for working with various biological software, and server-side backend service, that orchestrates all data, software, containers and analysis operations."
  homepage "https://platforma.bio"

end