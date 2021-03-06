cask "ubar" do
  version "4.1.6,416"
  sha256 "732a0c72234aaf11dadb507232e98bf782f0a3e73afdeeeee13f849ebac1417a"

  url "https://www.brawersoftware.com/downloads/ubar/ubar#{version.after_comma}.zip"
  name "uBar"
  desc "Window manager and productivity tool"
  homepage "https://brawersoftware.com/products/ubar"

  livecheck do
    url "https://brawersoftware.com/appcasts/feeds/ubar/ubar#{version.major}.xml"
    strategy :sparkle
  end

  app "uBar.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/ca.brawer.ubar.sfl*",
    "~/Library/Application Support/uBar",
    "~/Library/Caches/ca.brawer.uBar",
    "~/Library/Preferences/ca.brawer.uBar.plist",
  ]
end
