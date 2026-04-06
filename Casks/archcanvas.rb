cask "archcanvas" do
  version "0.7.1"

  on_arm do
    url "https://github.com/dangtrivan15/archcanvas/releases/download/v#{version}/ArchCanvas-aarch64.dmg"
    sha256 "5001319734ab7f1148d24e5b1293f17794530b5594a30ef6440e38031b4e2f8f"
  end

  on_intel do
    url "https://github.com/dangtrivan15/archcanvas/releases/download/v#{version}/ArchCanvas-x64.dmg"
    sha256 "760a3ea5ff28271db833b526a61925e6300b7e210ba96eec8e60a1153f596dce"
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
