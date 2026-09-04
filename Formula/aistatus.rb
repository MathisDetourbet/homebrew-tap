class Aistatus < Formula
  desc "Check AI service status from the command line"
  homepage "https://github.com/MathisDetourbet/AIStatus"
  url "https://github.com/MathisDetourbet/AIStatus/releases/download/v0.5.1/aistatus-0.5.1-macos-universal.tar.gz"
  sha256 "4ec71b3d080691878f3c8955c0b399b2b7b8728e612ca7a3b19ccfa8e50df7d3"
  license "MIT"

  depends_on :macos

  def install
    bin.install "aistatus"
  end

  test do
    assert_match "operational", shell_output("#{bin}/aistatus", 2)
  end
end
