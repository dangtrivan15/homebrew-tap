cask "archcanvas" do
  version "0.3.1"

  on_arm do
    url "https://github.com/dangtrivan15/archcanvas/releases/download/v#{version}/ArchCanvas-aarch64.dmg"
    sha256 "1347b761f7a492be69929cbb5a3512429b9f03bd2e6efbf1f23c5ebcad20667d"
  end

  on_intel do
    url "https://github.com/dangtrivan15/archcanvas/releases/download/v#{version}/ArchCanvas-x64.dmg"
    sha256 "06200c80e9ac8b3bf36c7626b892fba8971f5787536c482eb14dc3485cabaa6d"
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
