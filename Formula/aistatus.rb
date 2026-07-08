class Aistatus < Formula
  desc "Check AI service status from the command line"
  homepage "https://github.com/MathisDetourbet/AIStatus"
  url "https://github.com/MathisDetourbet/AIStatus/releases/download/v0.5.0/aistatus-0.5.0-macos-universal.tar.gz"
  sha256 "c0babe9a8b055475e02584c79221e47aa26bd737c1cd67eff9f1e42b0f340a92"
  license "MIT"

  depends_on :macos

  def install
    bin.install "aistatus"
  end

  test do
    assert_match "operational", shell_output("#{bin}/aistatus", 2)
  end
end
