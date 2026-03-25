cask "aistatusbar" do
  version "0.2.0"
  sha256 "f9949546beac6f8fa74b04bb398576d315be60b3954844ba8228f1c033a169da"

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
