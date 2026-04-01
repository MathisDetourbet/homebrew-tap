cask "aistatusbar" do
  version "0.4.0"
  sha256 "6a63600b32e6c8becad129067dc575e2e2d7690ae5fd82096f43585ffb17c37a"

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