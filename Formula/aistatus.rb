class Aistatus < Formula
  desc "Check AI service status from the command line"
  homepage "https://github.com/MathisDetourbet/AIStatus"
  url "https://github.com/MathisDetourbet/AIStatus/releases/download/v0.3.0/aistatus-0.3.0-macos-universal.tar.gz"
  sha256 "cf6ae6d4f13a161598ce60a62ea48c6e0b1a944079f9a523a55022e67549d9d3"
  license "MIT"

  depends_on :macos

  def install
    bin.install "aistatus"
  end

  test do
    assert_match "operational", shell_output("#{bin}/aistatus", 2)
  end
end
