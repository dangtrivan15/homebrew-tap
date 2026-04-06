cask "archcanvas" do
  version "0.6.0"

  on_arm do
    url "https://github.com/dangtrivan15/archcanvas/releases/download/v#{version}/ArchCanvas-aarch64.dmg"
    sha256 "aa778644729dc662f5ce9af685f65e700b3ac93e5e4b348b4677842baa3f231b"
  end

  on_intel do
    url "https://github.com/dangtrivan15/archcanvas/releases/download/v#{version}/ArchCanvas-x64.dmg"
    sha256 "7c0d275b83b22527e4b1779443dc4045cb4c2e6caaf48610d7ea4efcf88f5d11"
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
