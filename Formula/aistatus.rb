class Aistatus < Formula
  desc "Check AI service status from the command line"
  homepage "https://github.com/MathisDetourbet/AIStatus"
  url "https://github.com/MathisDetourbet/AIStatus/releases/download/v0.4.0/aistatus-0.4.0-macos-universal.tar.gz"
  sha256 "f691832df05a3c9e1c8ec76c4bdb1c30ade24bff78c59e2e0467ca144d1c669a"
  license "MIT"

  depends_on :macos

  def install
    bin.install "aistatus"
  end

  test do
    assert_match "operational", shell_output("#{bin}/aistatus", 2)
  end
end
