cask "aistatusbar" do
  version "0.3.0"
  sha256 "1a1e954e21e3d969d0e34df7d7949862ef7879ae7c2cdbc3ae53647ec120c8ed"

  url "https://github.com/MathisDetourbet/AIStatus/releases/download/v#{version}/AIStatusBar-#{version}-macos-universal.zip"
  name "AIStatusBar"
  desc "Menu bar app showing AI service status"
  homepage "https://github.com/MathisDetourbet/AIStatus"

  depends_on macos: ">= :sequoia"

  app "AIStatusBar.app"

  zap trash: [
    "~/Library/Preferences/com.mathisdetourbet.AIStatusBar.plist",
  ]
end