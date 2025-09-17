cask "platforma-desktop" do
  version "1.21.19"

  on_macos do
    if Hardware::CPU.arm?
      url "https://cdn.platforma.bio/software/platforma-desktop-v2/macos/arm64/Platforma-#{version}-arm64.dmg"
      sha256 "10b2a7d09ee688010c9595fa87128703bb7f85de249297a11a7282ea32bb4dbc"   ### ARM64 DON'T DELETE
    else
      url "https://cdn.platforma.bio/software/platforma-desktop-v2/macos/amd64/Platforma-#{version}.dmg"
      sha256 "6dd5649785afa3ebf1f87888503dd5d13698426c5b780b48b25c495f63f06325"   ### AMD64 DON'T DELETE
    end
  app "Platforma.app"
  end
  
  name "platforma"
  desc "Platforma is a system for efficient biological data analysis and management. It consists of two main components: the Desktop application, that provides users with intuitive interface for working with various biological software, and server-side backend service, that orchestrates all data, software, containers and analysis operations."
  homepage "https://platforma.bio"

end