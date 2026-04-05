cask "archcanvas" do
  version "0.4.0"

  on_arm do
    url "https://github.com/dangtrivan15/archcanvas/releases/download/v#{version}/ArchCanvas-aarch64.dmg"
    sha256 "cfccf376225d6504651a463f930391e9c6cf654fc689e3c50f98d3327e12afd3"
  end

  on_intel do
    url "https://github.com/dangtrivan15/archcanvas/releases/download/v#{version}/ArchCanvas-x64.dmg"
    sha256 "4b76bc8c73ef0a9a614dd3281de0517b45bc985989e52e22fd65ffd5b716b740"
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
