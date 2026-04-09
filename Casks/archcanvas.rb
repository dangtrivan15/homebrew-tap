cask "archcanvas" do
  version "0.9.0"

  on_arm do
    url "https://github.com/dangtrivan15/archcanvas/releases/download/v#{version}/ArchCanvas-aarch64.dmg"
    sha256 "f5ea795b46487a728abd09a3ee8a6edb834912a3e0f9bb051865b99a91ffe6af"
  end

  on_intel do
    url "https://github.com/dangtrivan15/archcanvas/releases/download/v#{version}/ArchCanvas-x64.dmg"
    sha256 "4f9d56a964e3ce64a7b4a2ceeedf6b614ff6cf06c83c2f25d56d2a3c38ed5e03"
  end

  name "ArchCanvas"
  desc "Visual architecture canvas for designing and documenting software systems"
  homepage "https://github.com/dangtrivan15/archcanvas"

  app "ArchCanvas.app"

  zap trash: [
    "~/Library/Application Support/com.archcanvas.desktop",
    "~/Library/Caches/com.archcanvas.desktop",
    "~/Library/Preferences/com.archcanvas.desktop.plist",
  ]
end
