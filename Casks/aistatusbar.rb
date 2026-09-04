cask "aistatusbar" do
  version "0.5.1"
  sha256 "4a5a06b5e6dc53747fb241d8890bceb07fcba15acd4eb2258c7129d2ce7e6248"

  url "https://github.com/MathisDetourbet/AIStatus/releases/download/v#{version}/AIStatusBar-#{version}-macos-universal.zip"
  name "AIStatusBar"
  desc "Menu bar app showing AI service status"
  homepage "https://github.com/MathisDetourbet/AIStatus"

  depends_on macos: :sequoia

  app "AIStatusBar.app"

  zap trash: [
    "~/Library/Preferences/com.mathisdetourbet.AIStatusBar.plist",
  ]
end