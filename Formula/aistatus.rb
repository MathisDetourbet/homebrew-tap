class Aistatus < Formula
  desc "Check AI service status from the command line"
  homepage "https://github.com/MathisDetourbet/AIStatus"
  url "https://github.com/MathisDetourbet/AIStatus/releases/download/v0.2.0/aistatus-0.2.0-macos-universal.tar.gz"
  sha256 "9a3678990e4b3b35fc9a55debd2b035b35f7c28c716aa98fafc1973461dc5485"
  license "MIT"

  depends_on :macos

  def install
    bin.install "aistatus"
  end

  test do
    assert_match "operational", shell_output("#{bin}/aistatus", 2)
  end
end
